
function loginController({makeLogin}){
    
    return async function handle(httpRequest){
        const {userName,password}=httpRequest.body
        
        const response=await makeLogin({userName,password})

        console.log(httpRequest)

        const headers={
            'Content-Type':'application/json'
        }

        return{
            headers,
            statusCode:200,
            body:{
                message:response
            }
        }
    }

    
}

module.exports=loginController