//
//  ContentView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var newsWebService = NewsWebService()
    @StateObject var pokeWebService = PokeWebService()
    
    let gbImg = Image("pokeball").resizable()
    let columnSpacing: CGFloat = 10
    let rowSpacing: CGFloat = 10
    var gridLayout: [GridItem]{
        return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
    }
    
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 15, content: {
                    Spacer()
                    
                    NewsCapsule()
                    //GRID
                    PokedexCapsule()
                    
                    Spacer()
                    
                    FooterView()
                    
                })//:VSTACK
                
            })//:SCROLLVIEW
            .navigationBarTitle("Pokemon",displayMode: .large)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Image("p1")
                        .resizable()
                        .scaledToFit()
                        .font(.title2)
                        .frame(width: 30, height: 30, alignment: .trailing)
                })
            })
        }//:NAVIGATIONBAR
        .environmentObject(pokeWebService)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NewsWebService())
            .environmentObject(PokeWebService())

    }
}
