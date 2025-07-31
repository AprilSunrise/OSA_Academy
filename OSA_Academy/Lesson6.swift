//
//  Lesson6.swift
//  OSA_Academy
//
//  Created by Saanvi Krishnareddygari on 7/31/25.
//

import SwiftUI

struct Lesson6: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("Lesson 6: Functions")
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity)

                    Text("A function is a block of code that performs a specific task.")
                        .multilineTextAlignment(.center)

                    Divider()
                    
                    Text("Example 1: Basic Function")
                        .bold()
                    Text("""
                    func greet() {
                        print("Hello, world!")
                    }

                    greet()
                    // Output: Hello, world!
                    """)

                    Divider()

                    
                    Text("Example 3: Function that Returns a Value")
                        .bold()
                    Text("""
                    func add(a: Int, b: Int) -> Int {
                        return a + b
                    }

                    let result = add(a: 3, b: 5)
                    print(result)
                    // Output: 8
                    """)

                    Divider()

                    NavigationLink(destination: Lesson6Quiz()) {
                        Text("Quiz")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 100) // square size
                            .background(Color.pink)
                            .cornerRadius(16)
                            .font(.headline)
                            
                            
                    }
                    .frame(maxWidth: .infinity, alignment: .center) // centers it horizontally
                    .padding(.top)
                    
                }
                .padding()
            }
            
        }
    }
}

#Preview {
    Lesson6()
}

