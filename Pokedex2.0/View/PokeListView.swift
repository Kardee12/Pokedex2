//
//  PokeListView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/31/22.
//

import SwiftUI

extension Image{
    
    func anotherImgModifier() -> some View{
        self
            .resizable()
            .scaledToFill()
            .frame( width: 75, height: 75)
            .cornerRadius(9)
    }
}

struct PokeListView: View {
    @State var imgURL: String = ""
    @EnvironmentObject var pokeWebService: PokeWebService
    //functions
    
//    func loadImage() async -> [Image]{
//        for 
//    }
    
    var body: some View {
            List( pokeWebService.pokeList?.results ?? [], id: \.id){ pokemon in
                NavigationLink(destination: PokeDetailsView(urlString: pokemon.url, counter: 4, name: pokemon.name)) {
                    AsyncImage(url:URL(string: "https://play.pokemonshowdown.com/sprites/bw/\(pokemon.name).png")){ image in
                        image.anotherImgModifier()
                                }
                    placeholder: {
                                    Image(systemName: "photo.circle.fill").iconModifer()
                                }.padding(40)
                    Text(pokemon.name.uppercased()).font(.system(size: 10, weight: .heavy, design: .rounded))
                        .foregroundColor(.gray)
                }
            }
            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            .frame(height: 180.5, alignment: .center)
        .task {
            do{
                try await pokeWebService.getPokemonList()
            } catch{
                print("---> task error: \(error)")
            }
        }
    }
}

struct PokeListView_Previews: PreviewProvider {
    static var previews: some View {
        PokeListView()
            .environmentObject(PokeWebService())
    }
}
