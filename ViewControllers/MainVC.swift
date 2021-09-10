//
//  MainVC.swift
//  Quiz
//
//  Created by Alexander Kovzhut on 09.09.2021.
//

import UIKit

class MainVC: UIViewController {
    
    let questions = Question.getQuestion()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let navigationVC = segue.destination as? UINavigationController,
              let vc = navigationVC.topViewController as? QuestionsVC else { return }
        
        vc.questions = questions
    }
    
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
    }
}
