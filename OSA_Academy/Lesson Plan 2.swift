//
//  Lesson Plan 2.swift
//  OSA_Academy
//
//  Created by Amelia Chow on 7/29/25.
//

import SwiftUI

struct LessonThreeView: View {
    @State var userInput: String = ""
    @State var feedback: String = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Lesson 3: Numbers in Swift")
                .font(.title)
                .fontWeight(.bold)

            Text("In Swift, you can create numbers using:")
                .font(.body)

            VStack(alignment: .leading, spacing: 5) {
                Text("• `Int` for whole numbers")
                Text("• `Float` for decimal numbers (less precise)")
                Text("• `Double` for decimal numbers (more precise)")
            }
            .font(.system(.body, design: .monospaced))
            .foregroundColor(.gray)

            Divider()

            Text("📘 Task:")
                .font(.headline)

            Text("Write a line of Swift code to store the number **3.14** using a `Double`.\nExample: `let pi: Double = 3.14`")
                .font(.body)

            TextField("Type your Swift code here...", text: $userInput)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.vertical)

            Button("Check My Code") {
                let trimmed = userInput.replacingOccurrences(of: " ", with: "")

                if trimmed == "letpi:Double=3.14" {
                    feedback = "✅ Great job! You correctly declared a Double."
                } else if trimmed.contains("3.14") {
                    feedback = "⚠️ Almost! Make sure you use `let`, the variable name `pi`, and `Double`."
                } else {
                    feedback = "❌ Not quite. Try declaring a Double with the value 3.14."
                }
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())

            if !feedback.isEmpty {
                Text("Feedback:")
                    .font(.headline)
                Text(feedback)
                    .foregroundColor(feedback.contains("✅") ? .green : .red)
                    .padding()
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    LessonThreeView()
}
