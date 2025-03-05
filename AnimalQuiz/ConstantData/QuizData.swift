//
//  QuizData.swift
//  AnimalQuiz
//
//  Created by Nobuki Mitsuoka on 2025/03/05.
//

import SwiftUI

enum QuizData {
    static let knowledgeQuestions: [QuizItem] = [
        QuizItem(
            question: "次のうち、世界で最も速く走る動物はどれですか？",
            choices: ["チーター", "ライオン", "ウサイン・ボルト", "馬"],
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
            choices: ["キリン", "アルパカ", "象", "馬"],
            correctAnswer: "キリン"
        )
    ]

    static let silhouetteQuestions: [QuizItem] = [
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.silhouetteDeer),
            choices: ["シカ", "ライオン", "ウサギ", "馬"],
            correctAnswer: "シカ"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.silhouetteDuck),
            choices: ["アヒル", "フクロウ", "ハト", "スズメ"],
            correctAnswer: "アヒル"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.silhouetteHorse),
            choices: ["馬", "カメ", "コウモリ", "ヒト"],
            correctAnswer: "馬"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.silhouetteLion),
            choices: ["ライオン", "コアラ", "ゾウ", "フクロウ"],
            correctAnswer: "ライオン"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.silhouettePelican),
            choices: ["ペリカン", "アルパカ", "象", "馬"],
            correctAnswer: "ペリカン"
        )
    ]

    static let partialImageQuestions: [QuizItem] = [
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.partialCrow),
            choices: ["カラス", "ライオン", "ウサギ", "馬"],
            correctAnswer: "カラス"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.partialDeer),
            choices: ["シカ", "フクロウ", "ハト", "スズメ"],
            correctAnswer: "シカ"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.partialZebra),
            choices: ["シマウマ", "カメ", "コウモリ", "ヒト"],
            correctAnswer: "シマウマ"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.partialGiraffe),
            choices: ["キリン", "コアラ", "ゾウ", "フクロウ"],
            correctAnswer: "キリン"
        ),
        QuizItem(
            question: "次の動物はどれですか？",
            questionImage: Image(.partialElephant),
            choices: ["ペリカン", "アルパカ", "象", "馬"],
            correctAnswer: "象"
        )
    ]
}
