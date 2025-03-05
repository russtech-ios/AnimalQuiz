//
//  GenreSelectionView.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/05.
//

import SwiftUI

struct GenreSelectionView: View {
    @State var isShowingQuizView = false
    @State var selectedQuizData: [QuizItem] = []
    var body: some View {
        VStack {
            Button {
                selectedQuizData = QuizData.knowledgeQuestions
                isShowingQuizView = true
            } label: {
                Text("動物知識クイズ")
                    .font(.title.bold())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalSkin)
                    .foregroundStyle(.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button {
                selectedQuizData = QuizData.silhouetteQuestions
                isShowingQuizView = true
            } label: {
                Text("動物シルエットクイズ")
                    .font(.title.bold())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalSkin)
                    .foregroundStyle(.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            Button {
                selectedQuizData = QuizData.partialImageQuestions
                isShowingQuizView = true
            } label: {
                Text("部分画像クイズ")
                    .font(.title.bold())
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.originalSkin)
                    .foregroundStyle(.originalBrown)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
        .padding()
        .backgroundImage()
        .fullScreenCover(isPresented: $isShowingQuizView) {
            QuizView(quizItems: $selectedQuizData)
        }
    }
}

#Preview {
    GenreSelectionView()
}
