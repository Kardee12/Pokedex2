//
//  PokedexCapsule.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/4/22.
//

import Foundation
import SwiftUI

struct PokedexCapsule: View {
    @StateObject var pokeWebService = PokeWebService()
    let gbImg = Image("pokeball").resizable()
    
    var body: some View {
        GroupBox(label: Label{
            Text("PokéStuff")
        } icon: {
            Image("pokeball").resizable().scaledToFit().frame(width: 30, height: 30, alignment: .leading)
        }
                 , content: {
            PokeListView()
        }).padding(.horizontal, 20).foregroundColor(.red)
            .environmentObject(pokeWebService)
    }
}

struct PokedexCapsule_Previews: PreviewProvider {
    static var previews: some View {
        PokedexCapsule()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(PokeWebService())
    }
}
