//
//  ContentView.swift
//  ButtonPractice
//
//  Created by Shon Bennett on 1/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            //Button instance with closure
            //closure is the func after the action:: in the button's parentheses
            Button("Click Me", action: {
                print("Hello, there")
            })
            
            //Button Instanct with trailing closure
            //for the trailing closure, you delete the action parameter, and then put the method in curly brackets outside the button parentheses
            Button("Click Me") {
                
                print("Hello, world")
                
            }
            
            //Button Instance with label view
            //we could not do a trailing closure for the action because it was not the last patameter
            Button(action: {
                print("Hi, Shon")
            }, label: {
                HStack {
                    //systemName gives access to Apple's free SF symbols (which are images developers can use in their app)
                    Image(systemName: "pencil")
                    Text("Edit")
                }
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
