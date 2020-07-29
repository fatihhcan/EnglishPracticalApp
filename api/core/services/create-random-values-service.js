


function createRandomValuesService(result,randCount){
    let randomResult=[]

    for(let i=0;i<randCount;i++){
        let randInt = Math.random() * result.length
        let randQ = result[Math.floor(randInt)]
        randomResult[i] = randQ
        //checkOutToSameValue(randomResult,i)
    }

    return randomResult;
}



module.exports=createRandomValuesService