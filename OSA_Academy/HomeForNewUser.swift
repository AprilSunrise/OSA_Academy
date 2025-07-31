//
//  HomeForNewUser.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/31/25.
//

import SwiftUI

//
//  Home.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/29/25.
//

import SwiftUI

struct HomeForNewUser: View {
    @State private var completedLessons = Set<String>()
    @State private var totalLessons = 8 // Adjusted to match your number of lessons
    
    var progress: Double {
        guard totalLessons > 0 else { return 0.0 }
        return min(Double(completedLessons.count) / Double(totalLessons), 1.0)
    }
    
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                Text("Welcome to OSA Academy!")
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
                
                Spacer()
                Text("Your Lessons")
                    .font(.largeTitle)
                    .bold()
                
                VStack {
                    GeometryReader { geometry in
                        let radius: CGFloat = 130
                        let centerX = geometry.size.width / 2
                        let centerY = geometry.size.height / 1.8
                        
                        ZStack {
                            lessonNavigationLink(label: "L1", color: .red, destination: LessonOneView())
                                .position(x: centerX, y: centerY - radius)
                            lessonNavigationLink(label: "L2", color: .orange, destination: LessonTwoView())
                                .position(x: centerX + radius * cos(.pi / 4), y: centerY - radius * sin(.pi / 4))
                            lessonNavigationLink(label: "L3", color: .green, destination: Lesson3())
                                .position(x: centerX + radius, y: centerY)
                            lessonNavigationLink(label: "L4", color: .blue, destination: Lesson4())
                                .position(x: centerX + radius * cos(.pi / 4), y: centerY + radius * sin(.pi / 4))
                            lessonNavigationLink(label: "L5", color: .purple, destination: Lesson5())
                                .position(x: centerX, y: centerY + radius)
                            lessonNavigationLink(label: "L6", color: .purple, destination: Lesson6())
                                .position(x: centerX - radius * cos(.pi / 4), y: centerY + radius * sin(.pi / 4))
                            lessonNavigationLink(label: "L7", color: .purple, destination: Lesson7())
                                .position(x: centerX - radius, y: centerY)
                            lessonNavigationLink(label: "L8", color: .purple, destination: Lesson8())
                                .position(x: centerX - radius * cos(.pi / 4), y: centerY - radius * sin(.pi / 4))
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
    
    func lessonNavigationLink<Destination: View>(
        label: String,
        color: Color,
        destination: Destination
    ) -> some View {
        NavigationLink(destination: destination.onAppear {
            // Add label to the completed set only once
            if !completedLessons.contains(label) {
                completedLessons.insert(label)
            }
        }) {
            lessonButton(label: label, color: color)
        }
    }
    
   

}
#Preview {
    Home()
}
