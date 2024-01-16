//
//  CountViewModel.swift
//  KidsMathGame
//
//  Created by Arshad Mustafa on 15/01/2024.
//


import Foundation
import UIKit

let CountQuestions: [Question] = [
    Question(text: "How many Bears", image: "bear", options: ["4", "2", "1", "6"], correctAnswerIndex: 3),
    Question(text: "How Many Candies", image: "candy", options: ["4", "5", "3", "2"], correctAnswerIndex: 2),
    Question(text: "How many Birds", image: "bird", options: ["12", "14", "10", "13"], correctAnswerIndex: 0),
    Question(text: "How many Balls", image: "ball", options: ["7", "9", "11", "8"], correctAnswerIndex: 1),
    Question(text: "How many Lions", image: "lion", options: ["6", "4", "1", "3"], correctAnswerIndex: 3)
]


final class CountViewModel: ObservableObject {
    @Published var currentQuestionIndex = 0
    @Published var userScore = 0
    @Published var isAnswerSelected = false
    @Published var isAnswerCorrect = false
    @Published var goToProgress = false
    @Published var progrssbar = 0.0
    @Published var showSheet = false
    @Published var questionNumber = 1
    
    func checkAnswer(_ selectedOptionIndex: Int) {
        if selectedOptionIndex == CountQuestions[currentQuestionIndex].correctAnswerIndex {
            userScore += 20
            progrssbar += 0.2
        }
    }
    
    func nextQuestion() {
        if currentQuestionIndex < CountQuestions.count - 1 {
            currentQuestionIndex += 1
        } else {
            goToProgress = true
            
        }
    }
    
    func playAgain() {
        userScore = 0
        progrssbar = 0.0
        currentQuestionIndex = 0
        goToProgress = false
        questionNumber = 1
    }
}
