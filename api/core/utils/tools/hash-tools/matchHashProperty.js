function MatchHash(bcrypt) {
    return async function handle(p1,p2) {
        const matching= await bcrypt.compare(p2,p1).catch(err=>{throw err})
        return matching
    }
}

module.exports=MatchHash