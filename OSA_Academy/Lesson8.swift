//
//  Lesson8.swift
//  OSA_Academy
//
//  Created by Saanvi Krishnareddygari on 7/31/25.
//

import SwiftUI

struct Lesson8: View {
    @State private var backgroundColor: Color = .white
    @State private var isCorrect = false

    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                Text("SwiftUI Stacks")
                    .font(.largeTitle)
                    .fontWeight(.bold)

                Text("Stacks let you arrange views in a line or on top of each other.")
                    .font(.body)

                VStack(alignment: .leading, spacing: 8) {
                    Text("• **VStack**: top to bottom")
                    Text("• **HStack**: left to right")
                    Text("• **ZStack**: stacked on top")
                }

                Text("Here's an example of an `HStack`:")
                    .font(.headline)

                Text(
    """
    HStack {
        Text("A")
        Text("B")
        Text("C")
    }
    """
                )
                .font(.system(.body, design: .monospaced))
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)

                Divider()

                Text(" What will this `HStack` display?")
                    .font(.headline)

                Button("A B C in a row") {
                    backgroundColor = .green
                    isCorrect = true
                }
                .buttonStyle(.bordered)

                Button("A\nB\nC in a column") {
                    backgroundColor = .red
                    isCorrect = false
                }
                .buttonStyle(.bordered)

                Button("A, B, and C stacked on top of each other") {
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
    Lesson8()
}
