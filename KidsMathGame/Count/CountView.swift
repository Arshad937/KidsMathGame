//
//  CountView.swift
//  KidsMathGame
//
//  Created by Arshad Mustafa on 15/01/2024.
//

import SwiftUI

struct CountView: View {
    @StateObject private var viewModel = CountViewModel()
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        NavigationView {
            ZStack {
                    BackgroundView(text: "")
                    VStack {
                        ZStack {
                            Image("Ellipse 3")
                                .frame(width: 55, height: 55)
                                .background(Color(red: 0.93, green: 0.55, blue: 0.38))
                            
                                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Image("home")
                                    .frame(width: 42, height: 42)
                            }
                        }
                        .frame(maxWidth: .infinity,alignment:.trailing)
                        .padding()
                        
                        Text(CountQuestions[viewModel.currentQuestionIndex].text)
                            .font(.custom(Font.PoppinsBold, size: 30))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.93, green: 0.55, blue: 0.38))
                            .frame(width: 274, height: 18, alignment: .center)
                        Image(uiImage: CountQuestions[viewModel.currentQuestionIndex].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 343, height: 250)
                        VStack {
                            HStack(alignment: .top, spacing: 25) {
                                ForEach(0..<2) { index in
                                    Button {
                                        viewModel.checkAnswer(index)
                                        viewModel.isAnswerSelected = true
                                    } label: {
                                        Text(CountQuestions[viewModel.currentQuestionIndex].options[index])
                                            .modifier(fullSizeButton())
                                    }
                                    .disabled(viewModel.isAnswerSelected)
                                }
                            }
                            .padding(.vertical, 20)

                            HStack(alignment: .top, spacing: 25) {
                                ForEach(2..<CountQuestions[viewModel.currentQuestionIndex].options.count) { index in
                                    Button(action: {
                                        viewModel.checkAnswer(index)
                                        viewModel.isAnswerSelected = true
                                    })  {
                                        Text(CountQuestions[viewModel.currentQuestionIndex].options[index])
                                            .modifier(fullSizeButton())
                                        
                                    }
                                }
                            }
                            
                            NavigationLink(destination: ProgressView(viewModel: viewModel),
                                           isActive: $viewModel.goToProgress) {
                                EmptyView()
                            }
                            Button(action: {
                                viewModel.nextQuestion()
                                viewModel.isAnswerSelected = false
                                viewModel.questionNumber += 1
                                viewModel.goToProgress
                            }) {
                                Text("Next")
                                    .modifier(capsuleButton())
                            }
                            .disabled(!viewModel.isAnswerSelected)
                            .background(viewModel.isAnswerSelected ? Color(hex: "#F9C380") : Color.white)
                            .cornerRadius(30)
                            .padding()
                            
                        }
                        .frame(height: 195, alignment: .leading)
                    }
            }
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    CountView()
}
