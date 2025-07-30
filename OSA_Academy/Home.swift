//
//  Home.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/29/25.
//

import SwiftUI

struct Home: View {
    @State private var completedLessons = 3
    @State private var totalLessons = 10

        var progress: Double {
            guard totalLessons > 0 else { return 0.0 }
            return Double(completedLessons) / Double(totalLessons)
        }
    var body: some View {

        NavigationStack{
            Text("Welcome to OSA!")
                .font(.largeTitle)
                .bold()
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                Text("Lesson 1: Strings")
                
            }
            
        }

        VStack(spacing: 30) {
                Text("Progress: \(Int(progress * 100))%")

                    ZStack {
                        Circle()
                            .stroke(lineWidth: 20)
                            .opacity(0.3)
                            .foregroundColor(.blue)

                        Circle()
                            .trim(from: 0.0, to: CGFloat(min(progress, 1.0)))
                            .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round))
                            .foregroundColor(.blue)
                            .rotationEffect(Angle(degrees: -90))
                            .animation(.easeOut, value: progress)

                        Text("\(Int(progress * 100))%")
                            .font(.largeTitle)
                            .bold()
                    }
                    .frame(width: 150, height: 150)
                }
        .padding()

    }
}

#Preview {
    Home()
}
