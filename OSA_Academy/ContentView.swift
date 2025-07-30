//
//  ContentView.swift
//  OSA_Academy
//
//  Created by Audrey on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            
        }

        NavigationStack {
            
            
            VStack {
                Image("OSAlogo")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("Welcome to OSA Academy! We are excited to raise the next batch of kids and help them become the best versions of themselves! To begin your journey, please sign up or log in!")
                
                NavigationLink(destination: Login()) {
                    Text("Login")
                    
                
                }
                
            }
                
            }


        .padding()
    }
}

#Preview {
    ContentView()
}
