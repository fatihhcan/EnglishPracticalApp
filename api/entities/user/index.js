
let Validate = require('../../core/validation/user-validate')
const {Hash}=require('../../core/utils/tools/hash-tools/index')



const buildUser=require('./user-entity')
const User=buildUser({Hash,Validate})

module.exports=User