import SwiftUI
struct SignUp: View {
    @State private var FirstName = ""
    @State private var ShowWarning: Bool = false
    @State private var LastName = ""
    @State private var NavigateHome: Bool = false
    //var name = "\(FirstName) \(LastName)"
    var body: some View {
        NavigationStack {
            VStack {
                Image("KWKbook2")
                    .resizable(resizingMode: .stretch)
                        .cornerRadius(505)
                        .padding()
                        .frame(width: 250, height: 250)
                
                Text("Sign Up!")
                    .font(.largeTitle)
                    .bold(true)
                Text("Your information will not be shared with anyone.")
                    .padding()
                HStack {
                    TextField("First Name", text: $FirstName)
                    
                        .padding()
                    
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(20)
                        .padding()
                    
                    TextField("Last Name", text: $LastName)
                        .padding()
                    
                        .background(Color(.systemGroupedBackground))
                        .cornerRadius(20)
                        .padding()
                    
                    
                }
                NavigationLink(destination: WelcomeUser(FirstName: FirstName), isActive: $NavigateHome) {
                    EmptyView()
                }
                Button(action: {
                    if FirstName.isEmpty || LastName.isEmpty {
                        ShowWarning = true
                    } else {
                        NavigateHome = true
                        
                    }
                }) {
                    Text("Sign Up")
                }
                .alert("Please fill in both name and password.", isPresented: $ShowWarning) {
                    Button("OK", role: .cancel) { }
                }
            }
        }
    }
}
#Preview {
    SignUp()
}

