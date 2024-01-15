//
//  HomeView.swift
//  KidsMathGame
//
//  Created by Arshad Mustafa on 15/01/2024.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            BackgroundView(text: "")
            
            HStack(alignment: .top, spacing: 26) {
                VStack(alignment: .center, spacing: 21) {
                    Text("1 2 3")
                        .font(.custom(Font.PoppinsRegular, size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.09, green: 0.72, blue: 0.29))

                    .frame(width: 103, alignment: .center)
                    
                    Text("Count")
                        .font(.custom(Font.PoppinsRegular, size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.09, green: 0.72, blue: 0.29))
                }
                
                .padding(.leading, 19)
                .padding(.trailing, 18)
                .padding(.top, 43)
                .padding(.bottom, 24)
                .frame(width: 140, height: 160, alignment: .bottom)
                .background(Color(red: 0.71, green: 0.97, blue: 0.78))

                .cornerRadius(20)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                VStack(alignment: .center, spacing: 0) {
                    Image("shape")
                    .frame(width: 100, height: 89)
                    Text("Match")
                        .font(.custom(Font.PoppinsRegular, size: 24))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.11, green: 0.65, blue: 0.65))
                }
                .padding(.horizontal, 20)
                .padding(.top, 11)
                .padding(.bottom, 24)
                .frame(width: 140, height: 160, alignment: .top)
                .background(Color(red: 0.63, green: 0.91, blue: 0.9))

                .cornerRadius(20)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
            }
            .padding(.horizontal, 2)
            .padding(.vertical, 20)
            .frame(width: 310, height: 200, alignment: .top)

            
        }
    }
}

#Preview {
    HomeView()
}
