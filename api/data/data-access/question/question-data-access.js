

function makeQuestionDb({makeDb}){
    
     return Object.freeze({
       getCollection,
       getCollectionById,
       dbRandomQuestions,
       add,
       update,
       remove}) 



    
   

    async function getCollection(){
        const db=await makeDb()
        const collection=db.collection("questions")
        const result=collection.find({})
        return (await result.toArray())
    }

    async function getCollectionById({id}){
        const db=await makeDb()
        const collection=db.collection("questions")
        const result=collection.find({id})
        return (await result.toArray())
    }

    async function add({id,...collectionInfo}){
        const db=await makeDb()
        const collection=db.collection("questions")
        const result=collection.insertOne({id,...collectionInfo})
        return result.insertId
    }



    async function update({id,...collectionInfo}){
        const db=await makeDb()
        const collection=db.collection("questions")
        const result=collection.updateOne({id},{$set:{...collectionInfo}})
        return result.modifiedCount>0?{id,...collectionInfo}:null
    }

    async function remove({id}){
        const db=await makeDb()
        const collection=db.collection("questions")
        const result=collection.deleteOne({id})
        return result.deletedCount
    }


    async function dbRandomQuestions(random_count) {
        const db = await makeDb()
        let pipeline = 
        [
          { $sample: { size: random_count } }
        ]
        const result = await db.collection('questions').aggregate(pipeline).toArray();
        return result
      }
     
}


module.exports=makeQuestionDb