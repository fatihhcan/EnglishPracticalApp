
class UnauthorizedError extends Error{
    constructor(message="Unauthorized"){
        super(message)

        if(Error.captureStackTrace){
            Error.captureStackTrace(this,UnauthorizedError)
        }
    }
}

module.exports=UnauthorizedError