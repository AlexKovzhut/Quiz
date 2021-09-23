//
//  Question.swift
//  Quiz
//
//  Created by Alexander Kovzhut on 09.09.2021.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestion() -> [Question] {
        [
            Question(
                title: "Why would you be a superhero?",
                type: .single,
                answers: [
                    Answer(title: "Well, because I'm cool, that's my calling", type: .arrogant),
                Answer(title: "And I didn't decide, others decided for me", type: .reluctant),
                Answer(title: "It is important for me to help others", type: .friend)
            ]),
            Question(
                title: "How did you end up in the company of superheroes?",
                type: .single,
                answers: [
                Answer(title: "So, by chance, a friend needed help. I can do without a team at all", type: .friend),
                Answer(title: "I'm just trying to find my place in this world, but in the company of like-minded people it will work out faster", type: .mysterious),
                Answer(title: "Superpowers that no one else has, and indeed I'm cool - of course, I was called", type: .arrogant)
            ]),
            Question(
                title: "Do you find common language with other people easily?",
                type: .single,
                answers: [
                Answer(title: "It's not so easy for me to become the soul of the company, usually I have 1-2 friends, but very close ones.", type: .reluctant),
                Answer(title: "The motivation of other people, their emotions and thoughts is important for me. If a person evokes sympathy or respect, I will listen to him and help him.", type: .friend),
                Answer(title: "I am very witty, but for some reason not everyone has fun when I joke. Maybe I hurt them somehow? Ahh, don't give a damn!", type: .mysterious)
            ]),
            Question(title: "What techniques do you usually use?", type: .multiple, answers: [
                Answer(title: "Fighting", type: .friend),
                Answer(title: "Technologies", type: .arrogant),
                Answer(title: "Stealth", type: .mysterious),
                Answer(title: "Magic", type: .reluctant)
            ]),
            Question(title: "Which Side Are You On?", type: .ranged, answers: [
                Answer(title: "Evil", type: .mysterious),
                Answer(title: "Neutral", type: .arrogant),
                Answer(title: "Good", type: .friend)
            ]),
        ]
    }
    
}

//Type of hero:
//arrogant
//friend
//reluctant
//mysterious
