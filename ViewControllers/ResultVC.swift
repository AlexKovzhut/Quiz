//
//  ResultVC.swift
//  Quiz
//
//  Created by Alexander Kovzhut on 09.09.2021.
//

import UIKit

class ResultVC: UIViewController {
    @IBOutlet weak var resultTitle: UILabel!
    @IBOutlet weak var resultBody: UILabel!
    
    var answers: [Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let res = calculateResult()
        updateUI(with: res)
        
        self.navigationItem.hidesBackButton = true
        
    }
}

extension ResultVC {
    private func calculateResult() -> HeroType? {
        var frequencyOfAnimals: [HeroType: Int] = [:]
        let animals = answers.map { $0.type }
        
        for animal in animals {
           frequencyOfAnimals[animal] = (frequencyOfAnimals[animal] ?? 0) + 1
        }
        
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted {$0.value > $1.value }
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else {
            return nil
        }
        
        return mostFrequencyAnimal
    }
    
    private func updateUI(with animal: HeroType?) {
        resultTitle.text = "You - \(animal?.rawValue ?? "?")!"
        resultBody.text = animal?.definition ?? ""
    }
}
