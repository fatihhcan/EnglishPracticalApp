
async function makeRepository({makeDb,collectionName}){

    const db=await makeDb()
    const collection=db.collection(collectionName)


    
    return Object.freeze({
        collectionName,
        getCollection,
        getCollectionById,
        Insert,
        update,
        remove
    })


    async function getCollection(){
        const result=collection.find({})
        return (await result.toArray())
    }

    async function getCollectionById({id:_id}){
        const result=collection.find({_id})
        return (await result.toArray())
    }

    function Insert({id:_id,...collectionInfo}){
        const result=collection.insertOne({_id,...collectionInfo})
        return result.insertId
    }



    function update({id:_id,...collectionInfo}){
        const result=collection.updateOne({_id},{$set:{...collectionInfo}})
        return result.modifiedCount
    }

    function remove({id:_id}){
        const result=collection.deleteOne({_id})
        return result.deletedCount
    }

    


}

module.exports=makeRepository