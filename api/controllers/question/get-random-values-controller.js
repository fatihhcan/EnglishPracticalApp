
function getRandomValuesController({makeGetRandomQuestions}){
    
    return async function handle(httpRequest){
        const {randCount}=httpRequest.params
        const response=await makeGetRandomQuestions(parseInt(randCount))

        const headers={
            'Content-Type':'application/json'
        }

        return{
            headers,
            statusCode:200,
            body:response
        }
    }

    
}

module.exports=getRandomValuesController