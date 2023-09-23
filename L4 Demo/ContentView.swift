//
//  ContentView.swift
//  L4 Demo
//
//  Created by Micah Aldrich on 9/22/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card3"
    @State var cpuCard: String = "card13"
    
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
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
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                    
                }.foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        // Randomize the players cards
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }else if playerCardValue < cpuCardValue {
            cpuScore += 1
        }else {
            print("Tie")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
