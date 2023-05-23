//
//  TaskScreen.swift
//  Swift_PA_TaskManager
//
//  Created by Bernadette Werneke on 23.05.23.
//

import SwiftUI

struct TaskScreen: View {
    
    @Binding var taskList: [MyTask]
  
    var body: some View {
        VStack{
            Text("My Todo:")
                .font(.largeTitle)
                .bold()
            
            List{
                ForEach($taskList) { i in
                    TaskRow(task: i)
                }
            }
        }
    }
}

struct TaskScreen_Previews: PreviewProvider {
    static var previews: some View {
        TaskScreen(taskList: .constant([
            MyTask(todo: "Blumen gießen", done: true),
            MyTask(todo: "Urlaub planen", done: false)]))
    }
}
