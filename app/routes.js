
import express from 'express';

import topics from "./topics";
import resources from "./resources";
import rules from "./rules";
import groups from "./groups";
import users from "./users";



var api = express.Router();

api.use("/topics", topics)
api.use("/rules", rules)
api.use("/resources", resources)
api.use("/groups", groups)
api.use("/users", users)



module.exports = api