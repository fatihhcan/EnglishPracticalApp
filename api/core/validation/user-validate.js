


let {IsValid}=require('./validate')


function UserValidate(){
    return {
        IsValidPassword,
        IsValid
    }
    function IsValidPassword(password){
      const validPassword=new RegExp("^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])")
    
      if(!validPassword.test(password)){
          throw new Error('Invalid password format')
      }

      return UserValidate()
    }
}

module.exports=UserValidate()