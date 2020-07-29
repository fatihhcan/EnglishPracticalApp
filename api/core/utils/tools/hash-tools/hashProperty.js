function Hash(bcrypt) {
    return async function handle(property) {
        const salt = await bcrypt.genSalt(10)
        return await bcrypt.hash(property, salt)
    }
}

module.exports=Hash