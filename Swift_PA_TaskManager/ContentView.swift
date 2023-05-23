//
//  ContentView.swift
//  Swift_PA_TaskManager
//
//  Created by Marianne Leal on 16.03.23.
//

import SwiftUI

struct ContentView: View {
   
    //@State var taskList: [MyTask]
    @State var taskList: [MyTask] = [
        MyTask(todo: "Blumen gießen", done: true),
        MyTask(todo: "Urlaub planen", done: false),
        MyTask(todo: "123", done: true)]
    
    @State var name: String = ""
    @State var age: String = ""
    @State var selGroesse: Double = 1.7
    @State var selGewicht: Float = 1.0
    @State var selColor: Color = .blue
    @State var birthDay: Date = Date()
    
       
    var body: some View {
        TabView{
            TaskScreen(taskList: $taskList).tabItem{
                Label("TODO", systemImage: "clock.fill")
            }
            ComplexUI(name: $name, age: $age, selGroesse: $selGroesse, selGewicht: $selGewicht, selColor: $selColor, birthDay: $birthDay).tabItem{
                Label("Profil", systemImage: "person.crop.circle")
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

