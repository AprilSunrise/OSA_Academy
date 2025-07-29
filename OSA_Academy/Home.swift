//
//  Home.swift
//  OSA_Academy
//
//  Created by Anwita Tiwari on 7/29/25.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack{
            Text("Welcome to OSA!")
                .font(.largeTitle)
                .bold()
            NavigationLink(destination: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Destination@*/Text("Destination")/*@END_MENU_TOKEN@*/) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label Content@*/Text("Navigate")/*@END_MENU_TOKEN@*/
                
            }
            
        }
    }
}

#Preview {
    Home()
}
