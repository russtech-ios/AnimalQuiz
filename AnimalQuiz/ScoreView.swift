//
//  ScoreView.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/01.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        VStack {
            Text("5問中3問正解！")
                .font(.system(size: 40).bold())
                .foregroundStyle(.originalYellow)
                .stroke(color: .originalGreen, width: 5)
                .frame(maxHeight: .infinity)
            Button {
                
            } label: {
                Image(.topButton)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
            }
        }
        .padding()
        .backgroundImage()
    }
}

#Preview {
    ScoreView()
}
