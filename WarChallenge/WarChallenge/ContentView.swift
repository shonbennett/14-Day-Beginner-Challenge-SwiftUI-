//
//  ContentView.swift
//  WarChallenge
//
//  Created by Shon Bennett on 1/11/22.
//

import SwiftUI


/*
 Layout Psuedocode
 
 Start main ZStack
 Background
 
 START main VStack
 
 WAR IMAGE
 CARD IMAGES (these need to be in a nested HStack)
 DEAL IMAGE
 Player and CPU text with score (need to be in HStack)
 
 END main VSTack
 END main ZStack
 
 */

struct ContentView: View {
    //@State keyword indicates that this property is a state property, which allows us to update the value
    //state property can: (1) change data, and (2) any references to these properties inside the View code will notify these properties of changes and automatically change the UI of the app. In simple terms, we depend on these properties to render the UI
    //only THIS content view would depend on these state properties for the UI, so we can place the private keyword before var to make sure only this content view can access it
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            //this ignoreSafeArea() method allows for the background image to expand beyond the notch, home bar, and sides
            Image("background").ignoresSafeArea()
            
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //Deal Button
                Button(action: {
                    
                    //Generate number btwn 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update the scores
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                }, label: {
                    Image("dealbutton")
                    
                })
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player").font(.headline).padding(.bottom, 10.0)
                        //we turned the Int value of playerScore into a String by using a String instance ---- String()
                        Text(String(playerScore)).font(.largeTitle)
                        
                    }.foregroundColor(Color.white).font(.title3)
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU").font(.headline).padding(.bottom, 10.0)
                        //we turned the Int value of cpuScore into a String by using a String instance ---- String()
                        Text(String(cpuScore)).font(.largeTitle)
                        
                    }.foregroundColor(Color.white)
                    
                    Spacer()
                }
                
                Spacer()
                
            }
            
            
        }
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portrait)
    }
}
