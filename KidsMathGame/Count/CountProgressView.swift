//
//  ProgressView.swift
//  KidsMathGame
//
//  Created by Arshad Mustafa on 16/01/2024.
//

import SwiftUI

struct CountProgressView: View {
    @ObservedObject var viewModel: CountViewModel
    var body: some View {
        ZStack {
            BackgroundView(text: "")
            VStack(spacing:30) {
                Text("Result")
                    .font(.custom(Font.PoppinsBold, size: 45))
                    .foregroundColor(Color(red: 0.93, green: 0.55, blue: 0.38))
                ZStack {
                    Circle()
                        .trim(from: 0.0, to: 1)
                        .stroke(Color.white, lineWidth: 25)
                        .frame(width: 230, height: 230)
                    Circle()
                        .trim(from: 0.0, to: viewModel.progrssbar)
                        .stroke(Color.green, lineWidth: 25)
                        .frame(width: 230, height: 230)
                        .rotationEffect(.degrees(-90))
                    Text("\(viewModel.userScore)%")
                        .font(.custom(Font.PoppinsExtraBold, size: 45))
                        .foregroundColor(Color(red: 0.93, green: 0.55, blue: 0.38))
                }
                NavigationLink(destination: HomeView(),
                               isActive: $viewModel.showSheet) {
                    EmptyView()
                }
                Button {
                    viewModel.playAgain()
                    viewModel.showSheet = true
                } label: {
                    Text("RESTART")
                        .modifier(playAgainButton())
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}

#Preview {
    CountProgressView(viewModel: CountViewModel())
}
