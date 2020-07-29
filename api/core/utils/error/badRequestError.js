
class BadRequestError extends Error{
    constructor(message="Bad Request"){
        super(message)

        if(Error.captureStackTrace){
            Error.captureStackTrace(this,BadRequestError)
        }
    }
}

module.exports=BadRequestError