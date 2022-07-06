//
//  ContentView.swift
//  CardGame
//
//  Created by Maksymilian Patoń on 04/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var CardsPlayer = "card6"
    @State private var CardsCPU = "card3"
    @State private var PointsPlayer = 0
    @State private var PointsCPU = 1
    
    var body: some View {
        ZStack {
                    
                    Image("background").ignoresSafeArea()
                    
                    VStack {
                        Spacer()
                        Image("logo")
                        Spacer()
                        HStack {
                            Spacer()
                            Image(CardsPlayer)
                            Spacer()
                            Image(CardsCPU)
                            Spacer() 
                        }
                        Spacer()
                        Button {
                            
                            let Prandom = Int.random(in: 2...14)
                            let Crandom = Int.random(in: 2...14)
//                            update cards
                            CardsPlayer = "card" + String(Prandom)
                            CardsCPU = "card" + String(Crandom)
//                            update score
                            PointsPlayer += 1
                            PointsCPU += 1
                            
                        } label: {
                            Image("dealbutton")
                        }
                        Spacer()
                        HStack {
                            Spacer()
                            VStack {
                                Text("Player")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 10.0)
                                Text(String(PointsPlayer))
                                    .font(.largeTitle)
                                    .foregroundColor(Color.white)
                            }
                            Spacer()
                            VStack {
                                Text("CPU")
                                    .font(.headline)
                                    .foregroundColor(Color.white)
                                    .padding(.bottom, 10.0)
                                Text(String(PointsCPU))
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
