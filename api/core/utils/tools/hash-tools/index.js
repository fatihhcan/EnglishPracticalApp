
const bcrypt=require('bcryptjs')

const Hash=require('./hashProperty')(bcrypt)
const MatchHash=require('./matchHashProperty')(bcrypt)

module.exports={
    Hash,
    MatchHash
}