//
//  Lesson Plan.swift
//  OSA_Academy
//
//  Created by Audrey Hou on 7/30/25.
//
import SwiftUI

struct LessonTwoView: View {
    @State private var backgroundColor: Color = .white
    @State private var q1Correct = false
    @State private var q2Correct = false
    @State private var showQuestion2 = false

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 30) {
                    Text("Swift Quiz")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    VStack(alignment: .leading, spacing: 10) {
                        Text("1. Which of the following is an example of a string in Swift?")
                            .font(.headline)

                        Button {
                            backgroundColor = .red
                            q1Correct = false
                        } label: {
                            HStack {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 24, height: 24)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                Text("4.0")
                                    .foregroundColor(.white)
                                    .padding(.leading, 8)
                                Spacer()
                            }
                            .padding()
                            .background(Color.black.opacity(0.2))
                            .cornerRadius(10)
                        }

                        Button {
                            backgroundColor = .green
                            q1Correct = true
                        } label: {
                            HStack {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 24, height: 24)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                Text(#""I like watermelon""#)
                                    .foregroundColor(.white)
                                    .padding(.leading, 8)
                                Spacer()
                            }
                            .padding()
                            .background(Color.black.opacity(0.2))
                            .cornerRadius(10)
                        }

                        Button {
                            backgroundColor = .red
                            q1Correct = false
                        } label: {
                            HStack {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 24, height: 24)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                Text("'mushrooms'")
                                    .foregroundColor(.white)
                                    .padding(.leading, 8)
                                Spacer()
                            }
                            .padding()
                            .background(Color.black.opacity(0.2))
                            .cornerRadius(10)
                        }

                        Button {
                            backgroundColor = .red
                            q1Correct = false
                        } label: {
                            HStack {
                                Circle()
                                    .fill(Color.white)
                                    .frame(width: 24, height: 24)
                                    .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                Text("ice cream")
                                    .foregroundColor(.white)
                                    .padding(.leading, 8)
                                Spacer()
                            }
                            .padding()
                            .background(Color.black.opacity(0.2))
                            .cornerRadius(10)
                        }

                        Text(q1Correct ? "Correct!" : "Try again.")
                            .foregroundColor(.white)
                            .padding(.top, 5)
                    }

                    if q1Correct && !showQuestion2 {
                        Button("Next") {
                            backgroundColor = .white
                            showQuestion2 = true
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .font(.headline)
                    }

                    if showQuestion2 {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("2. Which of the following correctly prints an integer in Swift?")
                                .font(.headline)

                            Button {
                                backgroundColor = .red
                                q2Correct = false
                            } label: {
                                HStack {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 24, height: 24)
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    Text(#"print("number")"#)
                                        .foregroundColor(.white)
                                        .padding(.leading, 8)
                                    Spacer()
                                }
                                .padding()
                                .background(Color.black.opacity(0.2))
                                .cornerRadius(10)
                            }

                            Button {
                                backgroundColor = .red
                                q2Correct = false
                            } label: {
                                HStack {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 24, height: 24)
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    Text(#"print("6.2")"#)
                                        .foregroundColor(.white)
                                        .padding(.leading, 8)
                                    Spacer()
                                }
                                .padding()
                                .background(Color.black.opacity(0.2))
                                .cornerRadius(10)
                            }

                            Button {
                                backgroundColor = .green
                                q2Correct = true
                            } label: {
                                HStack {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 24, height: 24)
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    Text(#"print(8)"#)
                                        .foregroundColor(.white)
                                        .padding(.leading, 8)
                                    Spacer()
                                }
                                .padding()
                                .background(Color.black.opacity(0.2))
                                .cornerRadius(10)
                            }

                            Button {
                                backgroundColor = .red
                                q2Correct = false
                            } label: {
                                HStack {
                                    Circle()
                                        .fill(Color.white)
                                        .frame(width: 24, height: 24)
                                        .overlay(Circle().stroke(Color.black, lineWidth: 1))
                                    Text(#"print(9.2)"#)
                                        .foregroundColor(.white)
                                        .padding(.leading, 8)
                                    Spacer()
                                }
                                .padding()
                                .background(Color.black.opacity(0.2))
                                .cornerRadius(10)
                            }

                            Text(q2Correct ? "Correct!" : "Try again.")
                                .foregroundColor(.white)
                                .padding(.top, 5)
                        }
                    }

                    Spacer()
                }
                .padding()
            }
        }
    }
}

#Preview {
    LessonTwoView()
}
