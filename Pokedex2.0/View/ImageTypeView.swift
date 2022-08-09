//
//  ImageTypeView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/3/22.
//

import SwiftUI

extension Image{
    
    func threeModifier() -> some View{
        self
            .resizable()
            .scaledToFill()
            .frame( maxWidth: 200, maxHeight: 200)
            .cornerRadius(9)
    }
}

struct ImageTypeView: View {
    var imgName: String
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            //Photo
                AsyncImage(url: URL(string: "https://play.pokemonshowdown.com/sprites/bw/\(imgName).png")){ image in
                    image.threeModifier()
                } placeholder: {
                    Image(systemName: "photo.circle.fill").threeModifier()
                }.padding(40)
                    
        })//:HSTACK
    }
}

struct ImageTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ImageTypeView(imgName: "pikachu")
    }
}
