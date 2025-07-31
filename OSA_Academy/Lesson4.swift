//
//  Lesson4.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/31/25.
//

import SwiftUI

struct Lesson4: View {
    var body: some View {
           Text("Lesson 4")
               .font(.largeTitle)
               .foregroundColor(.blue)
               .bold()
               .padding()
           VStack(alignment: .leading, spacing: 20) {
               Text("Operators")
                   .font(.largeTitle)
                   .bold()
                   .padding()
               Text("What does + do?")
                   .font(.headline)
                   .foregroundColor(.purple)
               Text("'+' means add numbers or join strings in Swift. ")
                   
               Text("What does '-' do?")
                   .font(.headline)
                   .foregroundColor(.purple)
               
               Text("In Swift, the '-' used to subtract numbers or to make a number negative.")
                   
               Text("What does the '*' mean?")
                   .font(.headline)
                   .foregroundColor(.purple)
               Text("In Swift, the '*' means serves as a sign to multiply things together.")
               
               Text("What does the '/' symbol do?  ")
                   .font(.headline)
                   .foregroundColor(.purple)
               Text("In Swift, the '/' symbol is used to divide numbers.")
               
               
              
              
               
               
               
               
                  
           }
           .padding()
       }
   }

        
        

#Preview {
    Lesson4()
}
