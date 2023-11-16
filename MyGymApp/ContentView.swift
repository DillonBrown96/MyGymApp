import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            //var weightToLift:Int
            MyNavigationStack()
        }
    }
}
struct MyNavigationStack: View {
    @State var weightToLift:Int
    @State var reps:Int
    @State var max:Int
    init() {
        weightToLift = 0
        reps = 0
        max = 0
    }
    var body: some View {
        Image(systemName: "Calculator")
        NavigationStack {
            List {
                NavigationLink {
                    Text("One Rep Max Calculator")
                 VStack{
                     Text("Enter weight that you can rep 15-20 times.").font(.title3).foregroundColor(.generalText).bold();
                        
                        TextField("", value: $weightToLift, formatter: NumberFormatter())
                        
                     Text("Enter reps:").font(.title3).foregroundColor(.generalText).bold();
                        
                        TextField("", value: $reps, formatter: NumberFormatter())
                        
                        
                        
                        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                            max = weightToLift * reps;
                        }
                     
                         if(max > 0) {
                             Text(String("Your 1 rep max is: " + String(max))).font(.largeTitle)
                         }
                    }
                    
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

