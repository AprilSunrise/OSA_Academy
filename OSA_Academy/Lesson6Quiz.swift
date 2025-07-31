//
//  Lesson6Quiz.swift
//  OSA_Academy
//
//  Created by Saanvi Krishnareddygari on 7/31/25.
//

import SwiftUI

struct Lesson6Quiz: View {
    struct Question {
        let text: String
        let options: [String]
        let correct: String
    }
    
    let questions: [Question] = [
        Question(
            text: "What keyword is used to define a function in Swift?",
            options: ["A. func", "B. function", "C. define", "D. def"],
            correct: "A. func"
        ),
        Question(
            text: """
            What will this function return?

            func add(a: Int, b: Int) -> Int {
                return a + b
            }
            add(a: 2, b: 3)
            """,
            options: ["A. 23", "B. 5", "C. a + b", "D. Error"],
            correct: "B. 5"
        ),
        Question(
            text: """
            What is the return type of this function?

            func greet() -> String {
                return "Hello!"
            }
            """,
            options: ["A. Void", "B. Int", "C. String", "D. Bool"],
            correct: "C. String"
        )
    ]
    
    @State private var currentQuestionIndex = 0
    @State private var score = 0
    @State private var showResult = false
    @State private var selectedOption: String? = nil
    @State private var showFeedback = false

    var body: some View {
        VStack(spacing: 20) {
            if showResult {
                Text("Quiz Completed!")
                    .font(.title)
                    .bold()
                Text("Your score: \(score)/\(questions.count)")
                    .font(.headline)
            } else {
                let question = questions[currentQuestionIndex]
                Text("Question \(currentQuestionIndex + 1) of \(questions.count)")
                    .font(.headline)
                    .padding(.top)

                Text(question.text)
                    .font(.body)
                    .bold()
                    .multilineTextAlignment(.leading)

                ForEach(question.options, id: \.self) { option in
                    Button(action: {
                        selectedOption = option
                        showFeedback = true
                        if option == question.correct {
                            score += 1
                        }
                        // Delay before moving to next question
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.6) {
                            goToNextQuestion()
                        }
                    }) {
                        HStack {
                            Text(option)
                                .foregroundColor(.white)
                            Spacer()
                            if showFeedback {
                                if option == question.correct {
                                    Image(systemName: "checkmark.circle.fill")
                                        .foregroundColor(.green)
                                } else if option == selectedOption {
                                    Image(systemName: "xmark.circle.fill")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                        .padding()
                        .background(selectedOption == option ? Color.blue : Color.gray)
                        .cornerRadius(10)
                    }
                    .disabled(showFeedback)
                }
            }
        }
        .padding()
        .animation(.easeInOut, value: currentQuestionIndex)
    }
    
    func goToNextQuestion() {
        selectedOption = nil
        showFeedback = false
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            showResult = true
        }
    }
}

#Preview {
    Lesson6Quiz()
}

