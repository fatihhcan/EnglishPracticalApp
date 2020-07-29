const {generalRoute}=require("./generalRoute")

const authRoute="auth"

module.exports=Object.freeze({
    login:`${generalRoute}/${authRoute}/login`,
    register:`${generalRoute}/${authRoute}/register`,

})