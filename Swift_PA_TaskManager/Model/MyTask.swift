//
//  MyTask.swift
//  Swift_PA_TaskManager
//
//  Created by Bernadette Werneke on 23.05.23.
//

import Foundation

struct MyTask: Identifiable {
    
    var id = UUID()
    var todo: String
    var done: Bool
}
