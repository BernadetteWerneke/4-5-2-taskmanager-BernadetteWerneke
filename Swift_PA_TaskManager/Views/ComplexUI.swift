//
//  ComplexUIView.swift
//  Swift_PA_TaskManager
//
//  Created by Bernadette Werneke on 23.05.23.
//

import SwiftUI

struct ComplexUI: View {
    
    @Binding var name: String
    @Binding var age: String
    @Binding var selGroesse: Double
    @Binding var selGewicht: Float
    @Binding var selColor: Color
    @Binding var birthDay: Date
    @State var showingAlert = false
    @State var showingSheet = false
    
    
    var body: some View {
        VStack{
           Text("My Profile:")
                .font(.largeTitle)
                .bold()
            
            HStack{
                Text("Name:")
                TextField("Enter name", text: $name)
                    .background(.thinMaterial)
            }
            .padding(.horizontal, 60)
            HStack{
                Text("Age:")
                TextField("Enter age", text: $age)
                    .background(.thinMaterial)
            }
            .padding(.horizontal, 60)
            
            //slider Größe + Gewicht
            HStack{
                Text("Height:")
                Text("0 m")
                VStack{
                    Slider(value: $selGroesse, in: 0.00...3.00)
                        .frame(width: 150)
                    Text("\(selGroesse, specifier: "%.2f")")
                }
                Text("3.00 m")
            }
            HStack{
                Text("Weight:")
                Text("1 kg")
                VStack{
                    Slider(value: $selGewicht, in: 1...150)
                        .frame(width: 200)
                    Text("\(selGewicht, specifier: "%.1f")")
                }
                Text("200 kg")
            }
            HStack{
                ColorPicker("Pick your eye color:", selection: $selColor)
            }.padding(.horizontal, 90)
            
            DatePicker("Birth:", selection: $birthDay,  displayedComponents: .date)
                .padding(.horizontal, 100)
            
            
            Button("Profile with alert"){
                showingAlert = true
            }
            .alert("Profil: \nName:\(name), \nAge:\(age), \nHeight:\(selGroesse), \nWeight:\(selGewicht), \nBirth:\(birthDay)", isPresented: $showingAlert){
                Button("close", role: .cancel) {}
            }
            .padding(.vertical, 30)

            
            Button("Profile with sheet") {
                showingSheet.toggle()
            }
            .sheet(isPresented: $showingSheet) {
            } content: {
                Text("Profil: \nName:\(name), \nAge:\(age), \nHeight:\(selGroesse), \nWeight:\(selGewicht), \nBirth:\(birthDay)")
                Button("close", role: .cancel) {
                    showingSheet = false
                }
            }
        }
    }
}

struct ComplexUI_Previews: PreviewProvider {
    static var previews: some View {
        ComplexUI(name: .constant(""),
                  age: .constant(""),
                  selGroesse: .constant(1.70),
                  selGewicht: .constant(60),
                  selColor: .constant(.blue),
                  birthDay: .constant(Date()))
    }
}
