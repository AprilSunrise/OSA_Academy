//
//  Home.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/29/25.
//

import SwiftUI

struct Home: View {
    @State private var completedLessons = 0
    @State private var totalLessons = 10

        var progress: Double {
            guard totalLessons > 0 else { return 0.0 }
            return Double(completedLessons) / Double(totalLessons)
        }
    var body: some View {
        NavigationView{
            VStack(spacing: 40){
                Text("Welcome Back!")
                    
                ZStack{
                    NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                        ZStack{
                            Circle()
                                .stroke(lineWidth: 20)
                                .opacity(0.3)
                                .foregroundColor(.blue)
                            Circle()
                                .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                                .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
                                .foregroundColor(.blue)
                                .rotationEffect(.degrees(-90))
                            Text("\(Int(progress * 100))%")
                                
                        }
                        .frame(width: 150, height:150)
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Group{
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Text("Lesson 1")
                                .padding(8)
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                            
                        }
                        .offset(y: 120)
                        
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Text("Lesson 2")
                                .padding(8)
                                .background(Color.orange)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .offset(y: 120)
                        
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Text("Lesson 3")
                                .padding(8)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .offset(y: 120)
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Text("Lesson 4")
                                .padding(8)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .offset(y: 120)
                        NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                            Text("Lesson 4")
                                .padding(8)
                                .background(Color.purple)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .offset(y: 120)

                        
                    }
                }
                
            }
        }
            }
}

#Preview {
    Home()
}
