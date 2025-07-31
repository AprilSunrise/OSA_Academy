//
//  Lesson Plan.swift
//  OSA_Academy
//
//  Created by Saanvi Krishnareddygari on 7/31/25.
//
import SwiftUI

struct Lesson7: View {
    @State private var backgroundColor: Color = .white
    @State private var q1Correct = false
    @State private var q2Correct = false
    @State private var q3Correct = false
    @State private var showQuestion2 = false
    @State private var showQuestion3 = false
    
    
    var body: some View {
        ScrollView{
            ZStack {
                backgroundColor
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 30) {
                        Text("Swift Quiz 2")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("1. Which of the following is a boolean?")
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
                                    Text("Hello world")
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
                                    Text(#""True/False"#)
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
                                    Text("'Arithmetic operators'")
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
                                    Text("For / While Loops")
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
                                Text("2. Which is a function??")
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
                                        Text(#"func walkDog() {}"#)
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
                        if q2Correct && !showQuestion3 {
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
                        
                        if showQuestion3 {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("2. Which of these is a function?")
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
                                        Text(#"func fruits()"#)
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
                                        Text(#"function fruits()"#)
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
                                        Text(#"func fruit() {}"#)
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
                                        Text(#"Func fruit() {}"#)
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
                                
                                
                                Spacer()
                            }
                            .padding()
                        }
                    }
                }
            }
        }
    }
}
#Preview {
    LessonTwoView()
}
