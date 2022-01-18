//
//  ContentView.swift
//  FirstProject
//
//  Created by Shon Bennett on 1/10/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //VStack stacks all of the elements vertically, HStack makes them horizontal and ZStack puts them on top of each other
        VStack {
            //the two spacers are what'ss centering the image. need one at top and bottom in order for image to be perfectly centered
            Spacer()
            Image("logo").resizable().aspectRatio(contentMode: .fit)
            //we nested the HStack inside of the V
            HStack(alignment: .center) {
                Spacer()
                Text("hello")
                Spacer()
                Text("world")
                Spacer()
            }
            Spacer()
            
        }
        
        

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
