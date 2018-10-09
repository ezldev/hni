import express from 'express'
import Promise from "promise"
import uuidv4 from "uuid/v4"
import logger from "../../helpers/logger"
import queryBuilder from "../../helpers/queryBuilder"
import dbConnector from "../../helpers/dbConnector"
import async from "async"
import _ from 'lodash'
var api = express.Router();

let module_table ="HNI_USERS"
let module_key = "USER_ID"

let connector_table ="HNI_USERGROUP"

api.get("/list", function(req,res,next){
    let sql=`select * from`+ " "+ module_table
    async.parallel({
        selectAll: function(callback) {
            dbConnector.executeQuery(sql).then(function(data){
                callback(null, data);
               },function(err){
                callback(err);
               })
        },
    }, function(err, results) {
       if(!err){
        res.send(results.selectAll)
       }else{
        res.send(err)
       }
        
    });
})
api.post("/createBlk",function(req,res,next){
    
    _.forEach(req.body, function(dataItem){
        if(!dataItem[module_key]){
            dataItem[module_key] = uuidv4();
        }
    })

   async.waterfall([
        function(callback) {
            let query =  queryBuilder.insertAll(module_table, req.body)
            dbConnector.executeQuery(query).then(function(data){
                callback(null, data);
         
            },function(err){
                callback(err);
            })
        },
        function(data,callback) {
            let sql=`select * from`+ " "+ module_table
            dbConnector.executeQuery(sql).then(function(list){
                callback(null, data,list);
         
            },function(err){
                callback(err);
            })
        }
    ], function (err, result,list) {

        console.log(result)
        if(!err){
            res.send(list)
        }else{
            res.send(err)
        }
        // result now equals 'done'
    });

} )
api.post("/update",function(req,res,next){
    async.waterfall([
        function(callback) {
           let sql =  `UPDATE`+ " "+ module_table +" "+`
            SET topic_name = `+"'"+ req.body.TOPIC_NAME +"'"+`
            WHERE `+" "+ module_key +" " +` = `+ "'"+req.body[module_key]+"'"
            console.log(sql)
            dbConnector.executeQuery(sql).then(function(data){
                callback(null, data);
         
            },function(err){
                callback(err);
            })
        },
        function(data,callback) {
            let sql=`select * from` + " "+ module_table
            dbConnector.executeQuery(sql).then(function(list){
                callback(null, data,list);
         
            },function(err){
                callback(err);
            })
        }
    ], function (err, result,list) {

        console.log(result)
        if(!err){
            res.send(list)
        }else{
            res.send(err)
        }
        // result now equals 'done'
    });


} )
api.post("/deleteById",function(req,res,next){
    async.waterfall([
        function(callback) {
           let sql =  `DELETE from`+ " "+module_table+ " " +`
            WHERE `+ " "+module_key+ " "+` = `+ "'"+req.body[module_key]+"'"
            dbConnector.executeQuery(sql).then(function(data){
                callback(null, data);
         
            },function(err){
                callback(err);
            })
        },
        function(data,callback) {
            let sql=`select * from` + " " + module_table
            dbConnector.executeQuery(sql).then(function(list){
                callback(null, data,list);
         
            },function(err){
                callback(err);
            })
        }
    ], function (err, result,list) {

        console.log(result)
        if(!err){
            res.send(list)
        }else{
            res.send(err)
        }
        // result now equals 'done'
    });
} )
api.post("/detailsById",function(req,res,next){

    async.parallel({
        rulesList: function(callback) {
           let sql = `
                    SELECT
                    r.rule_id,
                    r.rule_name,
                    r.rule_location,
                    r.rule_version

                FROM
                    hni_topics t
                    INNER JOIN hni_topicrule tr ON t.topic_id = tr.topic_id
                    INNER JOIN hni_rules r ON tr.rule_id = r.rule_id
                WHERE
                    t.topic_id = '`+ req.body.TOPIC_ID+`'
            `
            dbConnector.executeQuery(sql).then(function(rulesList){
                //console.log(rulesList)
                callback(null, rulesList);
               },function(err){
                callback(err);
               })
        },
        resourcesList: function(callback) {
            let sql = `
            SELECT
            r.resource_id,
            r.resource_type,
            r.resource_name,
            r.resource_location,
            r.resource_attr,
            t.topic_id,
            t.topic_name
        FROM
            system.hni_topics t
            INNER JOIN system.hni_topicresource tr ON t.topic_id = tr.topic_id
            LEFT JOIN system.hni_resources r ON tr.resource_id = r.resource_id
            WHERE
                t.topic_id = '`+ req.body.TOPIC_ID+`'
             `
             dbConnector.executeQuery(sql).then(function(resourceList){
               // console.log(resourceList) 
                callback(null, resourceList);
                },function(err){
                 callback(err);
                })
         },
    }, function(err, result) {
       console.log(result)
        if(!err){
        // let res = {
        //     rules:result.relatedRules,
        //     resources:result.relatedResources
        // }
        res.send(result)
       }else{
        res.send(err)
       }
        
    });



} )


module.exports = api