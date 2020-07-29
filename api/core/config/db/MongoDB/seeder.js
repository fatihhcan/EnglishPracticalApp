const fs = require('fs')
const makeDb = require('./mongo-db-config')()

const questions = JSON.parse(fs.readFileSync("../json/question3.json", "utf-8"))




const insertMany = async () => {
    try {
        const db = await makeDb
        db.collection("questions").insertMany(questions)
        console.log("Success...","green")

    } catch (e) {
        console.log("Fail...","red")
        throw e
    }

}

const DeleteMany = async () => {
    try {
        const db = await makeDb
        db.collection("questions").deleteMany({})
        console.log("Success...","green")

    } catch (e) {
        console.log("Fail...","red")
        throw e
    }

}

if (process.argv[2] === "-im") {
    insertMany()
}

if (process.argv[2] === "-dm") {
    DeleteMany()
}