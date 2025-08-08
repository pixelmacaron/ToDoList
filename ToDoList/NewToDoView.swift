//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    
    @Bindable var toDoItem: ToDoItem
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("Task Title:")
                .foregroundColor(Color.black)
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: $toDoItem.title)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: $toDoItem.isImportant) {
                Text("Is it important?")
                    .fontWeight(.medium)
                    
            }
            .padding(.vertical, 10.0)
            .padding(.horizontal, 40)
            
            Button {
                addToDo()
            } label: {
                Text("Save")
                    .foregroundColor(Color.white)
                    .padding(.horizontal, 30.0)
                    .padding(.vertical, 5.0)
                    .background(Color.blue)
                    .fontWeight(.bold)
                    .cornerRadius(28.0)
                    .padding()
            }
        }
        .padding()
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title, isImportant: toDoItem.isImportant)
        modelContext.insert(toDo)
    }
}

#Preview {
    NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false))
}
