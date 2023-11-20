import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MyNavigationStack()
        }
    }
}
struct MyNavigationStack: View {
    @State var weightToLift:Double
    @State var reps:Double
    @State var max:Double
    @State var heightInInches:Double
    @State var weightInPounds:Double
    @State var BMI:Double
    init() {
        weightToLift = 0
        reps = 0
        max = 0
        heightInInches = 0
        weightInPounds = 0
        BMI = 0
    }
    var body: some View {
        Image(systemName: "Calculator")
        NavigationStack {
            List {
                NavigationLink {
                    Text("One Rep Max Calculator")
                 VStack{
                     Text("Enter weight.").font(.title3).foregroundColor(.generalText).bold();
                        
                        TextField("", value: $weightToLift, formatter: NumberFormatter())
                        
                     Text("Enter reps:").font(.title3).foregroundColor(.generalText).bold();
                        
                        TextField("", value: $reps, formatter: NumberFormatter())
                        
                        
                        
                        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                            max = weightToLift / ((1.0278) - (0.0278 * reps))
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
                    VStack{
                        Text("Enter your weight").font(.title3).foregroundColor(.generalText).bold();
                        TextField("", value: $weightInPounds, formatter: NumberFormatter())
                        Text("Enter your height in inches").font(.title3).foregroundColor(.generalText).bold();
                        TextField("", value: $heightInInches, formatter: NumberFormatter())
                        
                        Button(/*@START_MENU_TOKEN@*/"Button"/*@END_MENU_TOKEN@*/) {
                            BMI = weightInPounds / pow(heightInInches,2) * 703
                        }
                        
                        if(BMI > 0) {
                            Text(String("Your body mass index is: " + String(BMI))).font(.largeTitle)
                        }
                        
                    }
                    
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

