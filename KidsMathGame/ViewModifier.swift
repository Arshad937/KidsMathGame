//
//  ViewModifier.swift
//  KidsMathGame
//
//  Created by Arshad Mustafa on 15/01/2024.
//

import Foundation
import SwiftUI

struct vstackModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 320, height: 150)
            .background(LinearGradient(
                gradient: Gradient(colors: [Color(hex: "#9AFFE2"), Color(hex: "#DDBBFF")]),
                startPoint: .leading,
                endPoint: .trailing))
            .cornerRadius(10)
    }
}

struct fullSizeButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 120, height: 50, alignment: .center)
            .background(Color(hex: "#e46be0"))
            .foregroundColor(.white)
            .cornerRadius(20)
    }
}

struct capsuleButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Font.PoppinsLight, size: 22))
            .foregroundColor(.black)
            .frame(width: 200, height: 65)
        
    }
}

struct playAgainButton: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom(Font.PoppinsBold, size: 22))
            .foregroundColor(Color(red: 0.93, green: 0.55, blue: 0.38))
            .frame(width: 190, height: 45)
            .background(Color(hex: "#FBDAB1"))
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}
