//
//  QuizView.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/01.
//

import SwiftUI

struct QuizView: View {
    @State var isShowingScoreView = false
    let choices = ["ライオン","ウサイン・ボルト","チーター","馬"]
    var body: some View {
        VStack {
            Text("問題番号: 1/5")
                .font(.headline)
                .padding()
                .background(Color.originalGreen)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            Text("次のうち、世界で最も早く走る動物はどれですか？")
                .font(.title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.originalLightGreen)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.originalGreen, lineWidth: 5)
                )
                .frame(maxHeight: .infinity)
            ForEach(choices, id: \.self) { choice in
                Button {
                    isShowingScoreView = true
                } label: {
                    Text(choice)
                        .font(.title.bold())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.originalSkin)
                        .foregroundStyle(.originalBrown)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .fullScreenCover(isPresented: $isShowingScoreView) {
                    ScoreView()
                }
            }
        }
        .padding()
        .backgroundImage()
    }
}

#Preview {
    QuizView()
}
