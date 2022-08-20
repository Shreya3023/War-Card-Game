//
//  ContentView.swift
//  War Card Game
//
//  Created by Shreya Prasad on 15/08/22.
//

import SwiftUI

struct ContentView: View {
   @State  private var playerCard = "card6"
    @State private  var cpucard = "card2"
    @State  private var playerScore = 0
    @State    private var cpuScore = 0
    var body: some View {
        ZStack{
        Image("background")
            .ignoresSafeArea(.all)
            
            VStack{
                Spacer()
            Image("logo")
                Spacer()
            HStack{
                Spacer()
                Image(playerCard)
                Spacer()
                Image(cpucard)
                Spacer()
                
            }
                Spacer()
                
                Button(action: {
                  //generate a random number between 2 to 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                  //update the cards
                    playerCard = "card" + String(playerRand)
                    cpucard = "card" + String(cpuRand)
                    
                  //update the scores
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if  cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                } , label: {
                    Image("dealbutton")
                })
                
               
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                }
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                }
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
    }
}
