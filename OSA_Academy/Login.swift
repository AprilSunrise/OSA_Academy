//
//  Login.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/28/25.
//

import SwiftUI
import SwiftData

struct Login: View {
    var body: some View {
      let userNameField = TextField("Username", text: .constant(""))
      let PasswordField = SecureField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("Apple")/*@END_MENU_TOKEN@*/)
        
        NavigationStack{
            VStack{
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                Text("Please enter you username and password. This information will not be shared with anyone.")
                    .padding()
                    .foregroundColor(.purple)
                    .font(.caption)
                //TextField("Username", text:  /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    userNameField
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(20)
                    .padding()
                
                //SecureField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("Apple")/*@END_MENU_TOKEN@*/)
                PasswordField
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(20)
                    .padding()
                Button("Next") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                
                
            }
        }
        .padding()
    }
}


#Preview {
    Login()
}
