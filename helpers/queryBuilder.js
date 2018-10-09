import _ from 'lodash'
let queryBuilder = {
    insert1: function (table, data) {
        var sql = "insert into" + " " + table + " "
        var keys = []

        _.forEach(data, function (row) {
            let mykeys = Object.keys(row)
            // dynamic building of keys
            _.forEach(mykeys, function (o) {
                if (keys.indexOf(o) == -1) {
                    keys.push(o)
                }
            })
        })


        //append colunm statement
        var colStmt = "("
        _.forEach(keys, function (key, idx) {
            colStmt += key
            if (keys.length - 1 !== idx) {
                colStmt += ","
            }
        })
        colStmt += ")" + " "
        sql += colStmt

        var valStatement = "values" + " "
        sql += valStatement
        _.forEach(data, function (row, rowIdx) {
            let valInnerStatement = ""
            //append value statement
            console.log("processing", row)
            valInnerStatement += "("
            _.forEach(keys, function (key, idx) {
                console.log(key, row[key], (row[key] === undefined))
                valInnerStatement += (row[key] === undefined) ? "''" : "'" + row[key] + "'"
                if (keys.length - 1 !== idx) {
                    valInnerStatement += ","
                }

            })
            valInnerStatement += ")"
            console.log(data.length, rowIdx)
            if (data.length - 1 !== rowIdx) {
                valInnerStatement += ","
            }
            sql += valInnerStatement

        })
        return sql
        //var keys = Object.keys(data[])

    },
    insertAll: function (table, data) {
        var sql = "insert all" + " "
        var keys = []

        _.forEach(data, function (row) {
            let mykeys = Object.keys(row)
            // dynamic building of keys
            _.forEach(mykeys, function (o) {
                if (keys.indexOf(o) == -1) {
                    keys.push(o)
                }
            })
        })


        _.forEach(data, function (dataItem) {
            sql += "into " + table +" "





            //append colunm statement
            var colStmt = "("
            _.forEach(keys, function (key, idx) {
                colStmt += key
                if (keys.length - 1 !== idx) {
                    colStmt += ","
                }
            })
            colStmt += ")" + " "
            //sql += colStmt

            var valStatement = "values" + " "
            //sql += valStatement
            let valInnerStatement = ""
            
                
                //append value statement
                //console.log("processing", row)
                valInnerStatement += "("
                _.forEach(keys, function (key, idx) {
                    //console.log(key,row[key],(row[key] === undefined))    
                    valInnerStatement += (dataItem[key] === undefined) ? "''" : "'" + dataItem[key] + "'"
                    if (keys.length - 1 !== idx) {
                        valInnerStatement += ","
                    }

                })
                valInnerStatement += ")"
                //console.log(data.length, rowIdx)
                // if (data.length - 1 !== dataItem) {
                //     valInnerStatement += ","
                // }
                //sql += valInnerStatement

          
            sql += colStmt + valStatement + valInnerStatement
        })
        sql += " "+ "SELECT 1 FROM DUAL"

        return sql
        //var keys = Object.keys(data[])

    }


}
module.exports = queryBuilder