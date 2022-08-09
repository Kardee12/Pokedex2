//
//  NewsListDetaiLView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 7/29/22.
//

import SwiftUI

extension Image{
    func imageModifier() -> some View{
        self
            .resizable()
            .scaledToFill()
            .frame( width: 50, height: 50)
            .cornerRadius(9)
    }
    func iconModifer() -> some View{
        self
            .imageModifier()
            .frame( width: 50, height: 50)
            .cornerRadius(9)
            .foregroundColor(.red)
    }
}

struct NewsListDetaiLView: View {
    var img: URL
    var title: String
    var src: String
    var body: some View {
        
        HStack{
            
            AsyncImage(url: img){ image in
                image.imageModifier()
            } placeholder: {
                Image(systemName: "pokeball").iconModifer()
            }
            VStack(alignment: .center, spacing: 16, content:{
                
                //Article Title
                VStack(alignment: .leading, spacing: 10){
                    Text("\(title)")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.red)
                        .truncationMode(.tail)
                    Text("\(src)")
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.yellow)
                }
                
            })
        }
//        HStack(alignment: .center, spacing: 16, content: {
//            //Article Image
//
//            Image("yak0")
//                .resizable()
//                .scaledToFill()
//                .frame( width: 60, height: 60)
//                .cornerRadius(9)
//        })
    }
}
