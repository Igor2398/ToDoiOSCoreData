//
//  TaskItemExtension.swift
//  ToDo
//
//  Created by Igor Ślusarski on 25/03/2023.
//

import SwiftUI

extension TaskItem {
    
    func isCompleted() -> Bool {
        return completedDate != nil
    }
    
    func isOverdue() -> Bool {
        if let due = dueDate {
            return !isCompleted() && scheduleTime && due < Date()
        } else {
            return false
        }
    }
    
    func overDueColor() -> Color {
        return isOverdue() ? .red : .black
    }
    
    func dueDateTimeOnly() -> String {
        if let due = dueDate {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "HH:mm"
            return dateFormatter.string(from: due)
        }
        return ""
    }
}
