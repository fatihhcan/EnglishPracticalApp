
const mongoDb=require('mongodb')

const MongoClient=mongoDb.MongoClient
const client=new MongoClient("mongodb+srv://quiz-haktan:o6P0Ar4tpW0f3334@quizdb.1rylu.mongodb.net/QuizDB?retryWrites=true&w=majority",{
    useUnifiedTopology:true
})

async function makeDb(){
    if(!client.isConnected()){
        await client.connect()
    }

    return client.db()
}



module.exports=makeDb
