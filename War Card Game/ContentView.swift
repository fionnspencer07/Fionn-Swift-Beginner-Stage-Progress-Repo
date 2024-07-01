//ContentView.swift
//War Card Game
//Created by Fionn Spencer on 28/6/24.


import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore = 0
    @State var cpuScore = 0
        
    var body: some View {
       
        ZStack{
            
            Image("background-plain")
                .resizable().ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                
                    
                }
                Spacer()
              
                Button(action: {deal()}, label: {
                    Image("button")
                })
                
                Spacer()
                HStack{
                    
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()

            }
        }
    }
    
    func deal(){
        //Randomise the player's card
        let playerCardValue = Int.random(in: 2 ... 14)
        playerCard = "card" + String(playerCardValue)
        //Randomise the CPU's card
        let cpuCardValue = Int.random(in: 2 ... 14)
        cpuCard = "card" + String(cpuCardValue)
        //Update the scores
        if playerCardValue > cpuCardValue{
            //add 1 to player score
            playerScore = playerScore + 1
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue{
            cpuScore += 1}
        // Add 1 to CPU Score
        else if playerCardValue == cpuCardValue{
            playerScore += Int(0.5)
            cpuScore += Int(0.5)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
