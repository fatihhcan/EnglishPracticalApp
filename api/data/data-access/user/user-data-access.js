
const repository=require('../../../core/data/repository')

async function makeUserDb({makeDb}){
    const {getCollection,getCollectionById,Insert,update,remove,collectionName}=await repository({makeDb,collectionName:"users"})
     return Object.freeze({
        getCollection,
        getCollectionById,
        getByUserName,
        Insert,
        update,
        remove
        
    })


    async function getByUserName({userName}){
        const db=await makeDb()
        const collection=db.collection(collectionName)

        const result=collection.find({userName})
        return (await result.toArray())
    }
}

module.exports=makeUserDb