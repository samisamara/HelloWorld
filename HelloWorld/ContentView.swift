//
//  ContentView.swift
//  HelloWorld
//
//  Created by Sami Samara on 2/15/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    // variables
    @State private var backgroundColor: Bool = false
    
    // content
    var body: some View {
        ZStack {
            if backgroundColor == false {
                Color(.red)
                    .ignoresSafeArea()
            } else {
                Color(.green)
                    .ignoresSafeArea()
            }
                    
                    
            Button {
                // Action for the button
                backgroundColor.toggle()
            } label: {
                // how the button looks
                Text("Tap Here!")
                    .foregroundColor(.black)
                    .font(.largeTitle)
                Image(systemName: "hand.tap")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            }

        }
        
    }
}

// preview (emulator)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
