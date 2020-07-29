

function makeCheckToTrueEnglishAnswer({makeQuestionDb}){
    return async function checkToTrueEnglishAnswer({answer},id){
        const {trueAnswer}=(await makeQuestionDb).getCollectionById({id}).turkishEnglish
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

module.exports=makeCheckToTrueEnglishAnswer