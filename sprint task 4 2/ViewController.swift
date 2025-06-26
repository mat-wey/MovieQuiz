//
//  ViewController.swift
//  sprint task 4 2
//
//  Created by Матвей Симонов on 25.06.2025.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var вопрос: UILabel!
    @IBOutlet weak var counts: UILabel!
    @IBOutlet weak var buttonДа: UIButton!
    @IBOutlet weak var QuestionTitleLabel: UILabel!
    @IBOutlet weak var buttonНет: UIButton!
    private var correctAnswers = 0
    private var QuestionIndex = 0
    private let font = UIFont(name: "YSDisplay-Medium", size: 20)
    override func viewDidLoad() {
        super.viewDidLoad()
        counts.text = "0/10"
        QuestionTitleLabel.font = font
        вопрос.font = font
    }
    private let questions: [QuizQuestion] = [QuizQuestion(
        image: "The Godfather",
        text: "Рейтинг этого фильма больше чем 6?",
        correctAnswer: true),QuizQuestion(
            image: "The dark knight",
            text: "Рейтинг этого фильма больше чем 6?",
            correctAnswer: true),
                    QuizQuestion(image: "Bill kill",text:"Рейтинг этого фильма больше чем 6?",correctAnswer: true),
                    QuizQuestion(
                        image: "The Avengers",
                        text: "Рейтинг этого фильма больше чем 6?",
                        correctAnswer: true),
                    QuizQuestion(
                        image: "Deadpool",
                        text: "Рейтинг этого фильма больше чем 6?",
                        correctAnswer: true),
                    QuizQuestion(
                        image: "The Green Knight",
                        text: "Рейтинг этого фильма больше чем 6?",
                        correctAnswer: true),
                    QuizQuestion(
                        image: "Old",
                        text: "Рейтинг этого фильма больше чем 6?",
                        correctAnswer: false),
                    QuizQuestion(
                        image: "The Ice Age Adventures of Buck Wild",
                        text: "Рейтинг этого фильма больше чем 6?",
                        correctAnswer: false),
                    QuizQuestion(
                        image: "Tesla",
                        text: "Рейтинг этого фильма больше чем 6?",
                        correctAnswer: false),
                    QuizQuestion(
                        image: "Vivarium",
                        text: "Рейтинг этого фильма больше чем 6?",
                        correctAnswer: false)
                ]
    private func convert(model: QuizQuestion) -> QuizStepViewModel {
        let a = QuizStepViewModel(
            image: UIImage(
                named: model.image) ?? UIImage(),
            question: model.text,
            questionNumber: "\(QuestionIndex + 1)\(questions.count)")
        return a
    }
        
}

