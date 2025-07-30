//
//  ContentView.swift
//  OSA_Academy
//
//  Created by Audrey on 7/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.pink]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("osa")
                
            }
            
            NavigationStack {
                
                
                VStack {
                    Image("OSAlogo")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    
                    Text("Welcome to OSA Academy! We are excited to raise the next batch of kids and help them become the best versions of themselves! To begin your journey, please sign up or log in!")
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Login()) {
                        Text("Login")
                        
                        
                    }
                    
                }
                
            }
            .cornerRadius(30)
            
            
            .padding()
        }
    }
}
    #Preview {
        ContentView()
    }

