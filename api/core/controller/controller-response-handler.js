

function HandleToMultiResponse(results){
    return function IndentedFormatting(GetResponseFunction){
        return results.map((result)=>{
            return GetResponseFunction(result)
        })
    }
}

function HandleToResponse(result){
    return function IndentedFormatting(GetResponseFunction){
        return GetResponseFunction(result)
    }
}




module.exports={HandleToResponse,HandleToMultiResponse}