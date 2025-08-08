//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct NewToDoView: View {
    var body: some View {
        VStack {
            Text("Task Title:")
                .foregroundColor(Color.white)
                .padding(.horizontal, 30.0)
                .padding(.vertical, 5.0)
                .background(Color.blue)
                .cornerRadius(28.0)
                .font(.title)
                .fontWeight(.bold)
            TextField("Enter the task description...", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                  .padding()
            Toggle(isOn: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Is On@*/.constant(true)/*@END_MENU_TOKEN@*/) {
                Text("Is it important?")
                    .fontWeight(.medium)
                    
            }
            .padding(.vertical, 10.0)
            .padding(.horizontal, 40)
            
            Button {

            } label: {
                Text("Save")
                    .fontWeight(.bold)
                    .padding()
            }
        }
        .padding()
    }
}

#Preview {
    NewToDoView()
}
