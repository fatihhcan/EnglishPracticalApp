
function checkToTrueEnglishAnswerController({makeCheckTrueEnglishAnswer}){
    
    return async function handle(httpRequest){
        const {answer}=httpRequest.body
        const {id}=httpRequest.params
        const response=HandleToMultiResponse(await makeCheckTrueEnglishAnswer({answer},id))

        return{
            headers,
            statusCode:200,
            body:{
                isTrue:response
            }
        }
    }
    
}

module.exports=checkToTrueEnglishAnswerController