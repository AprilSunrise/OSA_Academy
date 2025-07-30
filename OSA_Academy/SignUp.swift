//
//  SignUp.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/29/25.
//

import SwiftUI

struct SignUp: View {
    var body: some View {
        VStack {
            Text("Sign Up!")
                .font(.largeTitle)
                .bold(true)
            HStack {
                TextField("Name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    
                    .background(Color(.systemGroupedBackground))
                    .padding()
                    
            }
        }
    }
}

#Preview {
    SignUp()
}
