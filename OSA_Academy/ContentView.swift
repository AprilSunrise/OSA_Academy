import SwiftUI
struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.pink]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            NavigationStack {
                
                
                VStack {
                    Image("OSAlogo")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .cornerRadius(9000)

                    
                    Text("Welcome to OSA Academy! We are excited to raise the next batch of kids and help them become the best versions of themselves! To begin your journey, please sign up or log in!")
                        .multilineTextAlignment(.center)
                    
                    NavigationLink(destination: Login()) {
                        Text("Login")
                        
                        
                    }
                    .padding()
                    NavigationLink(destination: SignUp()) {
                        Text("Sign Up!")
                        
                        
                    }

                }
                .cornerRadius(30)
                
            }
            .cornerRadius(30)

            .padding()

        }
        
    }

}
    #Preview {
        ContentView()
    }
