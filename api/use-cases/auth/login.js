
const MakeRulesRunner = require('../../core/business/rules-runner')

const {MatchHash}=require('../../core/utils/tools/hash-tools/index')




function MakeLogin({makeUserDb}) {
    return async function login({userName,password}) {
        const result=await ValidUser(userName)
        const Password=result[0].password

       
        const ruleRunners=MakeRulesRunner(await IfTruePasswordAndUserName(password,Password))  
        if(ruleRunners===null){
            return "Succesfull Login"
        }
    }

    async function ValidUser(userName){
        const exists=(await makeUserDb).getByUserName({userName})
        if(!exists){
            throw new Error('Invalid credentials')
        }else{
            return exists
        }

        
    }

    async function IfTruePasswordAndUserName(password,Password){
        if(!await MatchHash(Password,password)){
            throw new Error('Invalid Password')
        }      
    }
}


module.exports=MakeLogin