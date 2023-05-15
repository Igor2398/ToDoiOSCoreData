//
//  TaskFilter.swift
//  ToDo
//
//  Created by Igor Ślusarski on 25/03/2023.
//

import SwiftUI

enum TaskFilter: String {
    static var allFilters: [TaskFilter] {
        return [.NotCompleted, .Completed, .OverDue, .All]
    }
    
    case All = "All"
    case NotCompleted = "To Do"
    case Completed = "Done"
    case OverDue = "Overdue"
}
