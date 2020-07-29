

class NotFoundError extends Error{
    constructor(message="Not found"){
        super(message)

        if(Error.captureStackTrace){
            Error.captureStackTrace(this,NotFoundError)
        }
    }
}

module.exports=NotFoundError