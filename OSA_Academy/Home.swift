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
        NavigationStack {
            VStack(spacing: 40) {
                Text("Welcome Back!")
                    .font(.title)
                
                // Progress Ring
                ZStack {
                    Circle()
                        .stroke(lineWidth: 40)
                        .opacity(0.5)
                        .foregroundColor(.blue)
                    
                    Circle()
                        .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
                        .foregroundColor(.blue)
                        .rotationEffect(.degrees(-90))
                        .animation(.easeOut, value: progress)
                    
                    Text("\(Int(progress * 100))%")
                        .font(.title2)
                        .bold()
                }
                .frame(width: 200, height: 200)

                VStack(spacing: 16) {
                    
                    Text("Your Lessons")
                        .font(.headline)
                        
                    
                    GeometryReader { geometry in
                        let radius: CGFloat = 130
                        let centerX = geometry.size.width / 2
                        let centerY = geometry.size.height / 1.1 // Adjust this if needed

                        ZStack {
                            NavigationLink(destination: Text("hello!")) {
                                lessonButton(label: "L1", color: .red)
                            }
                            .position(x: centerX, y: centerY - radius)
                            
                            NavigationLink(destination: Text("hello!")) {
                                lessonButton(label: "L2", color: .orange)
                            }
                            .position(x: centerX + radius * cos(.pi / 4), y: centerY - radius * sin(.pi / 4))
                            
                            NavigationLink(destination: Text("hello!")) {
                                lessonButton(label: "L3", color: .green)
                            }
                            .position(x: centerX + radius, y: centerY)
                            
                            NavigationLink(destination: Text("Lesson 4 Content")) {
                                lessonButton(label: "L4", color: .blue)
                            }
                            .position(x: centerX + radius * cos(.pi / 4), y: centerY + radius * sin(.pi / 4))
                            
                            NavigationLink(destination: Text("Lesson 5 Content")) {
                                lessonButton(label: "L5", color: .purple)
                            }
                            .position(x: centerX, y: centerY + radius)
                        }
                        .frame(width: geometry.size.width, height: geometry.size.height)
                    }
                    .frame(height: 250)
                }

                Spacer()
            }
            .padding()
        }
    }
    
    func lessonButton(label: String, color: Color) -> some View {
        Text(label)
            .font(.caption)
            .frame(width: 60, height: 60)
            .background(color)
            .foregroundColor(.white)
            .clipShape(Circle())
    }
}

#Preview {
    Home()
}
