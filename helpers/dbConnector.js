

var logger = require('../helpers/logger')
import Promise from "promise"
import request from "request"
import _ from 'lodash'

var path= "http://192.168.1.22:8088/api/runSql"

let normalizeData = function(data){
    var res =[]
    if(data.metaData && data.rows){
        var keys = _.map(data.metaData, function(keyItem){
            return keyItem.name
        })
        _.forEach(data.rows, function(dataItem){
            var temp ={}
            _.forEach(dataItem, function(item,itemIdx){
                temp[keys[itemIdx]] = item 
            })
            res.push(temp)
        })

    }else{
        res = data
    }
    return res

}  

let dbHelper={

    executeQuery: function(sql){
        return new Promise(function (resolve, reject) {
            var form={
                sql:sql
            }
           var req=  request.post({url:path, form:form},function (error, response, body) {
                        

                if(!error){
                    var res = JSON.parse(body)
                    res = normalizeData(res)
                    resolve(res)
                }else{
                    reject(error)
                }

            })
            debugger;

            });
        
        

    }

  }


module.exports = dbHelper