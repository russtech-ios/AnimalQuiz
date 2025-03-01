//
//  QuizView.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/01.
//

import SwiftUI

struct QuizView: View {
    var body: some View {
        VStack {
            Text("問題番号: 1/5")
            Text("次のうち、世界で最も早く走る動物はどれですか？")
            Button("ライオン") {
            }
            Button("ウサイン・ボルト") {
            }
            Button("チーター") {
            }
            Button("馬") {
            }
        }
    }
}

#Preview {
    QuizView()
}
