function buildUser({Hash,Validate}) {
    return async function makeBuildUser({
        userName,
        password,
        highScore=0,
        createdOn=Date.now()
    } = {}) {

        Validate.IsValid(userName,password)
        .HasLength(userName,3)


        console.log(userName)
        console.log(password)

        Validate.IsValidPassword(password)

      const newPassword=await ReturnHashPassword(password)

            
        return Object.freeze({
            getUserName: () => userName,
            getPassword: () =>newPassword ,
            getHighScore:()=>highScore,
            getCreatedOn:()=>createdOn
        })
    }

      
    async function ReturnHashPassword(Password){
        return Hash?await Hash(Password):Password
      }
}

module.exports = buildUser