const {user} = require('../../entities/index')
const MakeRulesRunner = require('../../core/business/rules-runner')



function MakeRegister({makeUserDb}) {
    return async function addUser(body) {
        const User = await user(body)
        const ruleRunners=MakeRulesRunner(await IfUserExists(User.getUserName()))  
        if(ruleRunners===null){
           return (await makeUserDb).Insert({
               userName:User.getUserName(),
               password:User.getPassword(),
               highScore:User.getHighScore(),
               createdOn:User.getCreatedOn()
           })
        }
    }

    async function IfUserExists(userName){
        const exists=(await makeUserDb).getByUserName({userName})
        if(exists.length>0){
            throw new Error('User already exists')
        } 
    }

     
}


module.exports=MakeRegister