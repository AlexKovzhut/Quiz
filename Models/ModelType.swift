//
//  AnimalType.swift
//  Quiz
//
//  Created by Alexander Kovzhut on 09.09.2021.
//

enum HeroType: String {
    case arrogant = "arrogant superhero"
    case friend = "superhero's best friend"
    case reluctant = "reluctant hero"
    case mysterious = "mysterious superhero"
    
    var definition: String {
        switch self {
        case .arrogant:
            return "Examples: Doctor Strange, Iron Man, Rocket Rocket, Thor. How difficult it is sometimes with you! You seem like a cynical, sarcastic and arrogant person. But in fact, you often help others out, you are noble, smart and active. It's cool, you know."
        case .friend:
            return "Examples: Groot, Falcon, Iron Patriot, Mantis. You can learn true friendship. You are ready for anything for the sake of your comrades, you are a kind and loyal person. People come to you in difficult times, they share joy with you, they listen to your advice and know that you will not condemn, but will help. It is people like you who are a reliable shoulder, the fifth element and the soul of the whole company. Why? Because you are Groot."
        case .reluctant:
            return "Examples: Scarlet Witch, Ant-Man, Yondu, Vision. You have no goal to save the universe or even one planet. But you are sympathetic, kind and try to be a good person. You are willing to do a lot for family and friends."
        case .mysterious:
            return "Examples: Black Widow, Gamora, Nibula, Loki. You have a strong character and a sharp mind, so you are a little cynical. You may have even been a villain once. But who can reproach you for this: you did not choose this path. As a result, your power and strong character led to the bright side. For some time..."
        }
    }
}
