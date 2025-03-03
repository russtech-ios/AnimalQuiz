//
//  QuizView.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/01.
//

import SwiftUI

struct QuizItem {
    let question: String
    var choices: [String]
    let correctAnswer: String
}

struct QuizView: View {
    @State var isShowingScoreView = false
    @State var isShowingResultSymbol = false
    let choices = ["ライオン", "ウサイン・ボルト", "チーター", "馬"]
    let quizItems = [
        QuizItem(
            question: "次のうち、世界で最も早く走る動物はどれですか？",
            choices: ["ライオン", "ウサイン・ボルト", "チーター", "ウマ"],
            correctAnswer: "チーター"
        ),
        QuizItem(
            question: "次のうち、飛ぶことができない鳥はどれですか？",
            choices: ["ペンギン", "フクロウ", "ハト", "スズメ"],
            correctAnswer: "ペンギン"
        ),
        QuizItem(
            question: "次のうち、哺乳類でない動物はどれですか？",
            choices: ["イルカ", "カメ", "コウモリ", "ヒト"],
            correctAnswer: "カメ"
        ),
        QuizItem(
            question: "次のうち、夜行性でない動物はどれですか？",
            choices: ["ライオン", "コアラ", "ゾウ", "フクロウ"],
            correctAnswer: "ゾウ"
        ),
        QuizItem(
            question: "次のうち、最も長い首を持つ動物はどれですか？",
            choices: ["キリン", "アルパカ", "ゾウ", "ウマ"],
            correctAnswer: "キリン"
        )
    ]
    var body: some View {
        ZStack {
            VStack {
                Text("問題番号: 1/5")
                    .font(.headline)
                    .padding()
                    .background(Color.originalGreen)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text(quizItems[1].question)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalLightGreen)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.originalGreen, lineWidth: 5)
                    )
                    .frame(maxHeight: .infinity)
                ForEach(quizItems[1].choices, id: \.self) { choice in
                    Button {
                        print("\(choice)を選択しました。")
                        print("正解は\(quizItems[1].correctAnswer)です。")
                        if choice == quizItems[1].correctAnswer {
                            print("正解です。")
                        } else {
                            print("不正解です。")
                        }
                        isShowingResultSymbol = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            isShowingResultSymbol = false
                        }
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
            if isShowingResultSymbol {
                Text("○")
                    .font(.system(size: 1000))
                    .minimumScaleFactor(0.1)
                    .foregroundStyle(.red)
                    .lineLimit(1)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.5))
            }
        }
        .backgroundImage()
    }
}

#Preview {
    QuizView()
}
