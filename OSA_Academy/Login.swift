//
//  Login.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/28/25.
//

import SwiftUI
import SwiftData

struct Login: View {
    @State var name = ""
    @State var password = ""
    @State private var ShowWarning: Bool = false
    @State private var NavigateHome: Bool = false
    var body: some View {
      
        let userNameField = TextField("Username", text: $name)
      
        let PasswordField = SecureField("Password", text: $password)
        
        NavigationStack{
            if ShowWarning {
                Text("You must enter a username or password!")
                    .foregroundColor(.red)
                
            }
            Spacer()
            VStack{
                
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                Text("Please enter you username and password. This information will not be shared with anyone.")
                    .padding()
                    .foregroundColor(.purple)
                    .font(.caption)
                userNameField
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(20)
                    .padding()
                
                PasswordField
                    .padding()
                    .background(Color(.systemGroupedBackground))
                    .cornerRadius(20)
                    .padding()
                    
                NavigationLink(destination: Home()) {
                    Text("Login")
                
                }
                Button("Login") {
                    if name.isEmpty || password.isEmpty {
                      ShowWarning = true
                    }
                }
                
             
            }
            Spacer()
            VStack{
                
                Text("Don't have an account?")
                NavigationLink(destination: SignUp()) {
                    Text("Sign Up!")
                }
                
            }
            
           
        } .padding()
    }
    
  
}


#Preview {
    Login()
}
