//
//  TaskRow.swift
//  Swift_PA_TaskManager
//
//  Created by Bernadette Werneke on 23.05.23.
//

import SwiftUI

struct TaskRow: View {
    
    @Binding var task : MyTask
    
    var body: some View {
        HStack{
            Text(task.todo)
            Spacer()
            
            Button() {
                task.done.toggle()
            } label: {
                if task.done {
                    Image(systemName: "checkmark.circle")
                } else  {
                    Image(systemName: "circlebadge")
                }
            }
        
        }
        .padding(.horizontal, 30)
    }
}

struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: .constant(MyTask(todo: "123", done: false)))
    }
}
