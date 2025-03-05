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
    @State var isAnswerCorrect = false
    @State var currentQuizIndex = 0
    @State var correctCount = 0
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
                Text("問題番号: \(currentQuizIndex + 1)/\(quizItems.count)")
                    .font(.headline)
                    .padding()
                    .background(Color.originalGreen)
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Text(quizItems[currentQuizIndex].question)
                    .font(.title)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalLightGreen)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(.originalGreen, lineWidth: 5)
                    )
                    .frame(maxHeight: .infinity)
                ForEach(quizItems[currentQuizIndex].choices, id: \.self) { choice in
                    Button {
                        print("\(choice)を選択しました。")
                        print("正解は\(quizItems[currentQuizIndex].correctAnswer)です。")
                        if choice == quizItems[currentQuizIndex].correctAnswer {
                            print("正解です。")
                            isAnswerCorrect = true
                            correctCount += 1
                        } else {
                            print("不正解です。")
                            isAnswerCorrect = false
                        }
                        isShowingResultSymbol = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                            isShowingResultSymbol = false
                            if currentQuizIndex + 1 >= quizItems.count {
                                isShowingScoreView = true
                                return
                            }
                            currentQuizIndex += 1
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
                        ScoreView(scoreText: "\(quizItems.count)問中\(correctCount)問正解！")
                    }
                }
            }
            .padding()
            if isShowingResultSymbol {
                Text(isAnswerCorrect ? "○" : "×")
                    .font(.system(size: 1000))
                    .minimumScaleFactor(0.1)
                    .foregroundStyle(isAnswerCorrect ? .green : .red)
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
