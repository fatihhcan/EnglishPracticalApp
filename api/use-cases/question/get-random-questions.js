


function makeGetRandomQuestions({makeQuestionDb}){
    return async function getRandomQuestions(randCount){
        const result=await makeQuestionDb.dbRandomQuestions(randCount)
        return result
        
    }
}

module.exports=makeGetRandomQuestions