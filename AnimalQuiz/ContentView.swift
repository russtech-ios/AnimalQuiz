//
//  ContentView.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/01.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingQuizView = false
    
    var body: some View {
        VStack {
            Text("動物クイズ！")
            Button("スタート") {
                isShowingQuizView = true
            }
            .fullScreenCover(isPresented: $isShowingQuizView) {
                QuizView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
