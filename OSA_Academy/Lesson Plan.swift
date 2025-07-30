//
//  Lesson Plan.swift
//  OSA_Academy
//
//  Created by Amelia Chow on 7/29/25.
//

import Foundation
import SwiftUI

struct LessonOneView: View {
    @State var message: String = ""
    @State var output: String = ""

    var body: some View {
        VStack {
            Text("Lesson 1: Learn Strings in SwiftUI")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text("In coding, strings are a data type that represents a sequence of characters between two quotation marks.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)


            Text("Ex: \"Hello World!\"")
                .font(.system(.body, design: .monospaced))
                .foregroundColor(.gray)

            Text("Type a message below")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.top)

            Text("print(\"Your message\")")
                .font(.system(.body, design: .monospaced))
                .foregroundColor(.gray)

            TextField("Enter your message", text: $message)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Run your code") {
                output = message
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())

            if !output.isEmpty {
                Text("Output:")
                    .font(.headline)
                Text(output)
                    .font(.system(.body, design: .monospaced))
                    .foregroundColor(.green)
                    .padding()
                Text("Congratulations! You've written your first line of code! ")
                    .multilineTextAlignment(.center)
            }

            Spacer()
        }
        .padding()
    }
}

#Preview {
    LessonOneView()
}
