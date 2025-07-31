//
//  Lesson5.swift
//  OSA_Academy
//
//  Created by Saanvi Krishnareddygari on 7/30/25.
//

import SwiftUI

struct Lesson5: View {
    @State private var backgroundColor: Color = .white
    @State private var isCorrect = false

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                Text("Arrays & Loops")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("An **array** is a list of items. A **loop** lets you repeat actions for each item in that list.")
                    .font(.body)

                Text("Here's an example:")
                    .font(.headline)

                Text(
    """
    let fruits = ["apple", "banana", "cherry"]

    for fruit in fruits {
        print(fruit)
    }
    """
                )
                .font(.system(.body, design: .monospaced))
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)

                Divider()

                Text("What does this code print?")
                    .font(.headline)

                Button("apple banana cherry") {
                    backgroundColor = .green
                    isCorrect = true
                }
                .buttonStyle(.bordered)

                Button("fruit fruit fruit") {
                    backgroundColor = .red
                    isCorrect = false
                }
                .buttonStyle(.bordered)

                Button("[\"apple\", \"banana\", \"cherry\"]") {
                    backgroundColor = .red
                    isCorrect = false
                }
                .buttonStyle(.bordered)

                Text(isCorrect ? "Correct!" : "Try again.")
                    .foregroundColor(.white)
                    .padding(.top, 5)


                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    Lesson5()
}
