//
//  QuestionsVC.swift
//  Quiz
//
//  Created by Alexander Kovzhut on 09.09.2021.
//

import UIKit

class QuestionsVC: UIViewController {
    
    @IBOutlet weak var questionlabel: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabels: [UILabel]!
    @IBOutlet var multipleSwitch: [UISwitch]!
    
    @IBOutlet var rangedLabels: [UILabel]!
    @IBOutlet weak var rangedSlider: UISlider!
    @IBOutlet weak var rangedStackView: UIStackView!
    
    var questions: [Question] = []
    private var questionIndex = 0 //индекс активного вопроса
    
    private var answerChosen: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
}

extension QuestionsVC {
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        guard let currentIndex = singleButtons.firstIndex(of: sender) else { return }
        
        let currentAnswer = currentAnswers[currentIndex]
        answerChosen.append(currentAnswer)
        
        nextQuestion()
    }
    
    @IBAction func multipleAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        for (switcher, answer) in zip(multipleSwitch, currentAnswers) {
            if switcher.isOn {
                answerChosen.append(answer)
            }
        }
        
        nextQuestion()
    }
    
    @IBAction func rangeAnswerButtonPressed(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        answerChosen.append(currentAnswers[index])
        
        
        nextQuestion()
    }
}

extension QuestionsVC {
    private func updateUI() {
        //скрыть все стеки
        for stackView in [singleStackView, multipleStackView, rangedStackView] {
            stackView?.isHidden = true
        }
        
        //получить текущий вопрос
        let currentQuestion = questions[questionIndex]
        questionlabel.text = currentQuestion.title
        
        //подсчет прогресса
        let totalProgress = Float(questionIndex) / Float(questions.count)
        progressView.setProgress(totalProgress, animated: true)
        
        //navigation title
        title = "Question #\(questionIndex + 1)"
        
        let answers = currentQuestion.answers
        
        switch currentQuestion.type {
        case .single:
            updateSingleStackView(answers: answers)
        case .multiple:
            updateMultipleStackView(answers: answers)
        case .ranged:
            updateRangedStackView(answers: answers)
        }
    }
    
    private func updateSingleStackView(answers: [Answer]) {
        singleStackView.isHidden = false
        
        for (button, answer) in zip(singleButtons, answers) {
            button.setTitle(answer.title, for: .normal)
        }
    }
    
    private func updateMultipleStackView(answers: [Answer]) {
        multipleStackView.isHidden = false
        
        for (label, answer) in zip(multipleLabels, answers) {
            label.text = answer.title
        }
        
    }
    
    private func updateRangedStackView(answers: [Answer]) {
        rangedStackView.isHidden = false
        
        rangedLabels.first?.text = answers.first?.title
        rangedLabels.last?.text = answers.last?.title
        
    }
    
    private func nextQuestion() {
        questionIndex += 1
        
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "resultSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "resultSegue",
              let vc = segue.destination as? ResultVC else {
            return
        }
        
        vc.answers = answerChosen
    }
}
