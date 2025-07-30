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

                ZStack {
                    // Progress Ring
                    Circle()
                        .stroke(lineWidth: 20)
                        .opacity(0.3)
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

                    // Lesson Buttons Around Ring
                    GeometryReader { geometry in
                        let radius: CGFloat = 100
                        let centerX = geometry.size.width / 2
                        let centerY = geometry.size.height / 2

                        Group {
                            NavigationLink(destination: Text("Lesson 1 Content")) {
                                lessonButton(label: "L1", color: .red)
                            }
                            .position(x: centerX, y: centerY - radius) // Top

                            NavigationLink(destination: Text("Lesson 2 Content")) {
                                lessonButton(label: "L2", color: .orange)
                            }
                            .position(x: centerX + radius * cos(.pi / 4), y: centerY - radius * sin(.pi / 4)) // Top-right

                            NavigationLink(destination: Text("Lesson 3 Content")) {
                                lessonButton(label: "L3", color: .green)
                            }
                            .position(x: centerX + radius, y: centerY) // Right

                            NavigationLink(destination: Text("Lesson 4 Content")) {
                                lessonButton(label: "L4", color: .blue)
                            }
                            .position(x: centerX + radius * cos(.pi / 4), y: centerY + radius * sin(.pi / 4)) // Bottom-right

                            NavigationLink(destination: Text("Lesson 5 Content")) {
                                lessonButton(label: "L5", color: .purple)
                            }
                            .position(x: centerX, y: centerY + radius) // Bottom
                        }
                    }
                }
                .frame(width: 250, height: 250)

                Spacer()
            }
            .padding()
        }
    }

    // Helper view for lesson buttons
    func lessonButton(label: String, color: Color) -> some View {
        Text(label)
            .font(.caption)
            .padding(10)
            .background(color)
            .foregroundColor(.white)
            .clipShape(Circle())
    }
}

#Preview {
    Home()
}
