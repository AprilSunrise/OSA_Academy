//
//  Lesson3.swift
//  OSA_Academy
//
//  Created by Audrey on 7/30/25.
//

import SwiftUI

struct Lesson3: View {
    var body: some View {
        VStack {
            Text("Lesson 3: Comparison")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            Text(" Operators:")
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                
            Text("Comparison operators in Swift allow us to compare values. Each expression below is evaluated to a boolean (boo-lee-uhn), true or false. ")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.vertical)
            
            Text("3 < 5 = //-> true. ")
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
                .padding()
            Text("4 >= 9 //-> false")
                .foregroundColor(.red)
                .multilineTextAlignment(.center)
                .padding()
            Text("7 == 7 //-> true \nkarlie == karlie //-> true")
                .lineSpacing(50)
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
                .padding()
                .padding()
            Text("karlie == Karlie //-> false")
                .foregroundColor(.red)
                .multilineTextAlignment(.center)



            }
            .padding()

    }
}

#Preview {
    Lesson3()
}
