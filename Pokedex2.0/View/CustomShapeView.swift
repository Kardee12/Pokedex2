//
//  CustomShapeView.swift
//  Touchdown
//
//  Created by Karthik Manishankar on 7/17/22.
//

import SwiftUI

struct CustomShapeView: Shape {
    
    func path(in rect: CGRect ) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))
        return Path(path.cgPath)
    }
}

struct CustomShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeView()
            .padding()
    }
}
