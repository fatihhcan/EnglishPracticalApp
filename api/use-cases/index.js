

const {makeQuestionDb,makeUserDb}=require('../data/data-access/index')


const makeGetRandomQuestions=require('./question/get-random-questions')({makeQuestionDb})
const makeCheckTrueEnglishAnswer=require('./question/check-to-true-en-answer')({makeQuestionDb})
const makeCheckTrueTurkishAnswer=require('./question/check-to-true-tr-answer')({makeQuestionDb})

const makeRegister=require('./auth/register')({makeUserDb})
const makeLogin=require('./auth/login')({makeUserDb})


module.exports=Object.freeze({
    makeGetRandomQuestions,
    makeCheckTrueEnglishAnswer,
    makeCheckTrueTurkishAnswer,
    makeRegister,
    makeLogin
})