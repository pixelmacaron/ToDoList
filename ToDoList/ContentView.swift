//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+ ")
                        .padding(.horizontal,10)
                        .padding(.vertical,5)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                        .background(Color.white)
                        .cornerRadius(30)
                }
            }
            .padding(.vertical, 15)
            .padding(.horizontal, 20)
            .padding()
            .background(Color.blue)
            Spacer()
            
            List{
                ForEach (toDos) {toDoItem in Text(toDoItem.title)
                }
            }
            if showNewTask {
                NewToDoView()
            }
        }
    }
}
    

#Preview {
    ContentView()
}
