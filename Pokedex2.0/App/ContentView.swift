//
//  ContentView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var newsWebService = NewsWebService()
    
    var body: some View {
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .center, spacing: 0, content: {
                    NewsCapsule()
                })//:VSTACK
                
            })//:SCROLLVIEW
            
            .navigationBarTitle("PokéApp",displayMode: .large)
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarTrailing, content: {
                    Image(systemName: "moon.circle")
                        .resizable()
                        .scaledToFit()
                        .font(.title2)
                        .foregroundColor(.red)
                })
            })
            
        }//:NAVIGATIONBAR
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NewsWebService())

    }
}
