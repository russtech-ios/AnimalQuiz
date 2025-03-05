//
//  View+.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/01.
//

import SwiftUI

extension View {
    func stroke(color: Color, width: CGFloat = 1) -> some View {
        modifier(StrokeBackground(strokeSize: width, strokeColor: color))
    }

    @ViewBuilder
    func backgroundImage(_ image: Image = Image(.background)) -> some View {
        background(
            image
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .padding(-3)
        )
    }
}
