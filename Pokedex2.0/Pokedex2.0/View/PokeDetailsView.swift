//
//  PokeDetailsView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/1/22.
//

import SwiftUI

struct PokeDetailsView: View {
    @EnvironmentObject var pokeWebService: PokeWebService
    @State var urlString: String
    @State var counter: Int
    @State var name: String
    var body: some View {
        VStack(alignment: .center, spacing: 35, content: {
            //Header
            VStack(alignment: .leading, spacing: 4, content: {
                HeaderView(name: pokeWebService.pokemonIndvl?.name ?? "no name")
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    //        type: pokeWebService.pokemonIndvl?.types[0].type.name ?? ""
    //
                ImageTypeView(imgName: name).background(Color.white.clipShape(Circle()))
                
            })
            
            Spacer()
            
            Divider()
            
            VStack(alignment: .center, spacing: 2, content: {
                typeView(type: pokeWebService.pokemonIndvl?.types[0].type.name ?? "no species", ht: pokeWebService.pokemonIndvl?.height ?? 0, wt: pokeWebService.pokemonIndvl?.weight ?? 0).clipShape(RoundedRectangle(cornerRadius: 30))
                    .padding()
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                })
            })
            
        })
        .navigationBarTitleDisplayMode(.large)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarTrailing, content: {
                Image("p1")
                    .resizable()
                    .scaledToFit()
                    .font(.title2)
                    .frame(width: 30, height: 30, alignment: .trailing)
            })
        })
        .background(colorFunc().pickColor(type:pokeWebService.pokemonIndvl?.types[0].type.name ?? "" ))
        .task {
            do {
                try await pokeWebService.getPokemonFromPokemonList(from: urlString)
            } catch{
                print("---> PokeDetailsView error: \(error)")
            }
        }
    }
}

struct PokeDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PokeDetailsView( urlString: "https://pokeapi.co/api/v2/pokemon/120/", counter: 3, name: "staryu")
            .environmentObject(PokeWebService())
    }
}
