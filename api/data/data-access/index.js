
const makeDb=require('../../core/config/db/MongoDB/mongo-db-config')


const makeUserDb=require('./user/user-data-access')({makeDb:makeDb})
const makeQuestionDb=require('./question/question-data-access')({makeDb:makeDb})

module.exports={
    makeUserDb,
    makeQuestionDb
}