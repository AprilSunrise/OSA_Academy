import SwiftUI
struct WelcomeUser: View {
    let FirstName: String
    var body: some View {
        
        NavigationStack{
            VStack {
                Text("Welcome \(FirstName)!")
                    .font(.title)
                    .bold()
                    .padding()
                Text("If this is your first time at OSA Academy, please navigate to our Help page. ")
                    .padding()
                
                NavigationLink(destination: Help()) {
                    Text("Help")
                }
                Text("Otherwise, please navigate to our Curriculum Page!")
                NavigationLink(destination: HomeForNewUser()) {
                    Text("Curriculum")
                }
            }
        }
    }
}
#Preview {
    WelcomeUser(FirstName: "" )
}
