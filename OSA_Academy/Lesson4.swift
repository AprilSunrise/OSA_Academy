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
               .padding()
           VStack(alignment: .leading, spacing: 20) {
               Text("Operators")
                   .font(.largeTitle)
                   .bold()
                   .padding()
               Text("What does + do?")
                   .font(.headline)
                   .foregroundColor(.purple)
               Text("'+' means add numbers or join strings in Swift! ")
                   
               Text("What does '-' do?")
               Text("The '-' used to subtract numbers or to make a number negative.")
                   .font(.headline)
                   .foregroundColor(.purple)
               Text("What does the '*'")
               
               Text("You Try!")
                   .bold()
                   .foregroundColor(.pink)
                   .font(.title)
              
               
               
               
               
                  
           }
           .padding()
       }
   }

        
        

#Preview {
    Lesson4()
}
