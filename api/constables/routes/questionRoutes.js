
const {generalRoute,idParam}=require("./generalRoute")

const questionRoute="question"

module.exports=Object.freeze({
    checkEnglishAnswer:`${generalRoute}/${questionRoute}/checkEnglishAnswer${idParam}`,
    checkTurkishAnswer:`${generalRoute}/${questionRoute}/checkTurkishAnswer${idParam}`,
    getRandomQuestions:`${generalRoute}/${questionRoute}/random/:randCount`

})