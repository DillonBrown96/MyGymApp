import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyNavigationStack()
        }
    }
}
struct MyNavigationStack: View {
    var body: some View {
        Text("Fitness Calculators")
        NavigationStack {
            List {
                NavigationLink {
                    Text("One Rep Max Calculator")
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                } label: {
                    Label("One Rep Max Calculator", systemImage: "link")
                }
                NavigationLink {
                    Text("BMI Calculator")
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                } label: {
                    Label("BMI Calculator", systemImage: "link")
                }
                NavigationLink {
                    Text("Recommended Protein Calculator")
                    TextField(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                } label: {
                    Label("Recommended Protein Calculator", systemImage: "link")
                }
                
            }
        }
    }
}

