
function registerController({makeRegister}){
    
    return async function handle(httpRequest){
        const {body}=httpRequest
        const response=await makeRegister(body)

        const headers={
            'Content-Type':'application/json'
        }

        return{
            headers,
            statusCode:200,
            body:{message:'Successfull register',response}
        }
    }

    
}

module.exports=registerController