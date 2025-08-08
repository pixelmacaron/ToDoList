//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    
    var body: some View {
        VStack {
            HStack {
                Text("To-Do List")
                    .font(.system(size: 40))
                         .fontWeight(.black)
                Spacer()
                Button {
                    withAnimation {
                        showNewTask = true
                    }
                } label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                }
            }
            .padding(.vertical, 20)
            .padding(.horizontal, 20)
            .padding()
//            .background(Color(hue: 0.577, saturation: 0.249, brightness: 1.0))
            Spacer()
            
            if showNewTask {
                NewToDoView()
            }
        }
    }
}
    

#Preview {
    ContentView()
}
