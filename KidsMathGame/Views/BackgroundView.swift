//
//  BackgroundView.swift
//  KidsMathGame
//
//  Created by Arshad Mustafa on 15/01/2024.
//

import SwiftUI

struct BackgroundView: View {
    var text: String?
    var body: some View {
        VStack {
            ZStack {
                VStack {
                    HStack(alignment: .top, spacing: 10) {
                        Text("Math is Fun!")
                            .font(.custom(Font.PoppinsBold, size: 46))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.93, green: 0.55, blue: 0.38))
                        
                            .frame(maxWidth: .infinity, minHeight: 72, maxHeight: 72, alignment: .center)
                    }
                    .padding(.horizontal, 32)
                    .padding(.vertical, 29)
                    .frame(width: 360, height: 130, alignment: .topLeading)
                    .background(Color(red: 0.98, green: 0.85, blue: 0.69))
                    VStack {
                    }
                    
                }
                .frame(maxWidth: .infinity)
                .frame(height: 180)
                .background(Color(hex: "#FBDAB1"))
            }
            VStack {
                Text(text ?? "Modes")
                    .font(.custom(Font.PoppinsRegular, size: 36))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.93, green: 0.55, blue: 0.38))
                    .frame(maxWidth: .infinity)
                    .frame(height: 590, alignment:.top)
                
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
