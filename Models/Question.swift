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
            Question(title: "Какую пищу предпочитаете?", type: .single, answers: [
                Answer(title: "Стейк", type: .dog),
                Answer(title: "Рыба", type: .cat),
                Answer(title: "Морковь", type: .rabbit),
                Answer(title: "Кукуруза", type: .turtle)
            ]),
            Question(title: "Что вам нравится больше?", type: .multiple, answers: [
                Answer(title: "Плавать", type: .turtle),
                Answer(title: "Спать", type: .cat),
                Answer(title: "Обниматься", type: .rabbit),
                Answer(title: "Есть", type: .dog)
            ]),
            Question(title: "Любите ли вы поездки на машине?", type: .ranged, answers: [
                Answer(title: "Ненавижу", type: .cat),
                Answer(title: "Нервничаю", type: .rabbit),
                Answer(title: "Не замечаю", type: .turtle),
                Answer(title: "Обожаю", type: .dog)
            ]),
        ]
    }
    
}

