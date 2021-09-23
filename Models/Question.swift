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
            Question(title: "What techniques do you usually use?", type: .multiple, answers: [
                Answer(title: "Fighting", type: .friend),
                Answer(title: "Technologies", type: .arrogant),
                Answer(title: "Stealth", type: .mysterious),
                Answer(title: "Magic", type: .reluctant)
            ]),
            Question(
                title: "Do you find common language with other people easily?",
                type: .single,
                answers: [
                Answer(title: "It's not so easy for me to become the soul of the company, usually I have 1-2 friends, but very close ones", type: .reluctant),
                Answer(title: "The motivation of other people, their emotions and thoughts is important for me. If a person evokes sympathy or respect, I will listen to him and help him", type: .friend),
                Answer(title: "I am very witty, but for some reason not everyone has fun when I joke. Maybe I hurt them somehow? Ahh, don't give a damn!", type: .mysterious)
            ]),
            Question(
                title: "What are you ready for for a friend?",
                type: .single,
                answers: [
                Answer(title: "In general, it is difficult for me to put myself in the place of another, after all, we are all selfish and think only of ourselves", type: .mysterious),
                Answer(title: "I may seem like a loner, but I'm willing to do a lot for my friends", type: .reluctant),
                Answer(title: "I see no point in being a hero if you don't help others. And friends are sacred!", type: .friend)
            ]),
            Question(
                title: "Your superhero colleague has lost his temper and is possibly a threat. Your actions?",
                type: .single,
                answers: [
                Answer(title: "No need to understand. Out in the cold - that's all. Maybe you should even kill him", type: .mysterious),
                Answer(title: "I will try to talk to him, find out if everything is in order, maybe something happened", type: .friend),
                Answer(title: "So, bring the best equipment of our technogenesis, we need to scan the brain and find out what is wrong with it", type: .arrogant)
            ]),
            Question(title: "And last question...which side are you on?", type: .ranged, answers: [
                Answer(title: "Dark", type: .mysterious),
                Answer(title: "Center", type: .arrogant),
                Answer(title: "Light", type: .friend)
            ]),
        ]
    }
    
}

//Type of hero:
//arrogant
//friend
//reluctant
//mysterious
