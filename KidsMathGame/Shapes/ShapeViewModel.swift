//
//  ShapeViewModel.swift
//  KidsMathGame
//
//  Created by Arshad Mustafa on 16/01/2024.
//

import Foundation
import UIKit

let ShapeQuestions: [Question] = [
    Question(text: "What is the name of this shape", image: "rectangle", options: ["Rectangle", "Circle", "Square", "Triangle"], correctAnswerIndex: 0),
    Question(text: "What is the name of this shape", image: "circle", options: ["Octagone", "Hexagone", "Circle", "Triangle"], correctAnswerIndex: 2),
    Question(text: "What is the name of this shape", image: "triangle", options: ["Star", "Triangle", "Rectangle", "Square"], correctAnswerIndex: 1),
    Question(text: "What is the name of this shape", image: "square", options: ["Circle", "Hexagone", "Square", "Octagone"], correctAnswerIndex: 2),
    Question(text: "What is the name of this shape", image: "star", options: ["Hexagone", "Circle", "Triangle", "Star"], correctAnswerIndex: 3)
]


final class ShapeViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var userScore = 0
    @Published var isAnswerSelected = false
    @Published var isAnswerCorrect = false
    @Published var goToProgress = false
    @Published var progrssbar = 0.0
    @Published var showSheet = false
    @Published var questionNumber = 1
    
    func checkAnswer(_ selectedOptionIndex: Int) {
        if selectedOptionIndex == ShapeQuestions[currentQuestionIndex].correctAnswerIndex {
            userScore += 20
            progrssbar += 0.2
        }
    }
    
    func nextQuestion() {
        if currentQuestionIndex < ShapeQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            goToProgress = true
        }
    }
    
    func playAgain() {
        currentQuestionIndex = 0
        userScore = 0
        isAnswerSelected = false
        isAnswerCorrect = false
        goToProgress = false
        progrssbar = 0.0
        questionNumber = 1
    }
}
