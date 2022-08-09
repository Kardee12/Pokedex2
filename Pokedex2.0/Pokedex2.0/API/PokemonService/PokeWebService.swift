//
//  PokeWebService.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/31/22.
//

import Foundation


class PokeWebService: ObservableObject{
    
    @Published var pokeList: PokemonList?
    @Published var pokemonIndvl: Pokemon?
        
    
    func getPokemonList() async throws {
        let (data, _) = try await URLSession.shared.data(from: Constants.url.pokeList)
            Task{@MainActor in
                self.pokeList = try JSONDecoder().decode(PokemonList.self, from: data)
            }
    }
    
    func getPokemonFromPokemonList(from invlURL: String) async throws{
        if let plURL: URL = URL(string: invlURL){
            let (data, _) = try await URLSession.shared.data(from: plURL)
                Task{@MainActor in
                    self.pokemonIndvl = try JSONDecoder().decode(Pokemon.self, from: data)
                    
                }
        }
    }
    
}
