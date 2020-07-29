
function makeCheckToTrueTurkishAnswer({makeQuestionDb}){
    return async function checkToTrueTurkishAnswer({answer},id){
        const {trueAnswer}=(await makeQuestionDb).getCollectionById({id}).englishTurkish
        return CompareTwoAnswers(trueAnswer,answer)
    }


    function CompareTwoAnswers(trueAnswer,answer){
        if(answer===trueAnswer){
            return true
        }else{
            return false
        }
    }

    
}

module.exports=makeCheckToTrueTurkishAnswer