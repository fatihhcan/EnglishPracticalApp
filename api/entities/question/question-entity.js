function buildQuestion() {
    return function makeBuildQuestion({
        imageUrl,
        turkishEnglish = {
            question,
            answers,
            trueAnswer
        },
        englishTurkish = {
            question,
            answers,
            trueAnswer
        }
    } = {}) {
        return Object.freeze({
            getImageUrl: () => imageUrl,
            getTurkishEnglish: () => turkishEnglish,
            getEnglishTurkish: () => englishTurkish
        })
    }
}

module.exports = buildQuestion