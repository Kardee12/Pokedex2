//
//  typeView.swift
//  Pokedex2.0
//
//  Created by Karthik Manishankar on 8/5/22.
//

import SwiftUI

struct typeView: View {
    var type: String
    var ht: Int
    var wt: Int
    var body: some View {
        //Pokemon Main Type
        HStack(alignment: .top, spacing: 3) {
            
            
            VStack(alignment:.center, spacing: 3,content: {
                Text("Type:")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                HStack(alignment: .center, spacing: 0, content: {
                    Text(type)
                        .multilineTextAlignment(.center)
                        .padding()
                        .foregroundColor(.black)
                        .font(.headline)
                        .frame(width: 175, height: 75, alignment: .center)
                })
                
            })
            
            Spacer()
            
            VStack(alignment:.center, spacing: 3 ,content: {
                Text("Height/Weight:")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                
                Text("\(ht) dm, \(wt) g")
                    .multilineTextAlignment(.center)
                    .padding()
                    .foregroundColor(.black)
                    .font(.headline)
                    .frame(width: 175, height: 75, alignment: .center)
                
            })
            

        }.background(.white)
        
    }
}

struct typeView_Previews: PreviewProvider {
    static var previews: some View {
        typeView(type: "electric", ht: 10, wt: 10)
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
