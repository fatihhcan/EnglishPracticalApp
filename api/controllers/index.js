
const {
    makeCheckTrueEnglishAnswer,
    makeGetRandomQuestions,
    makeCheckTrueTurkishAnswer,
    makeRegister,
    makeLogin
}=require('../use-cases/index')


const getRandomValuesController=require('./question/get-random-values-controller')({makeGetRandomQuestions})
const checkToTrueEnglishAnswerController=require('./question/check-to-true-en-answer-controller')({makeCheckTrueEnglishAnswer})
const checkToTrueTurkishAnswerController=require('./question/check-to-true-tr-answer-controller')({makeCheckTrueTurkishAnswer})

const registerController=require('./auth/register-controller')({makeRegister})
const loginController=require('./auth/login-controller')({makeLogin})

module.exports={
    getRandomValuesController,
    checkToTrueEnglishAnswerController,
    checkToTrueTurkishAnswerController,
    registerController,
    loginController
}