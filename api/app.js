const express = require('express');


const bodyParser = require('body-parser');


const {
    checkTurkishAnswer,
    getRandomQuestions,
    checkEnglishAnswer,
}=require('./constables/routes/questionRoutes')

const {
    login,
    register
}=require('./constables/routes/authRoutes')



const ControllerCallback=require('./core/controller/frameworks/express/controller-callback')

const {
    checkToTrueEnglishAnswerController,
    checkToTrueTurkishAnswerController,
    getRandomValuesController,
    registerController,
    loginController
    
}=require('./controllers/index');

const app = express();
app.use(bodyParser.json())


app.get(getRandomQuestions,ControllerCallback(getRandomValuesController))

app.post(checkEnglishAnswer,ControllerCallback(checkToTrueEnglishAnswerController))
app.post(checkTurkishAnswer,ControllerCallback(checkToTrueTurkishAnswerController))

app.post(login,ControllerCallback(loginController))
app.post(register,ControllerCallback(registerController))



app.listen(8081, function (err) {
  if(err){
      console.log(err)
  }
})




