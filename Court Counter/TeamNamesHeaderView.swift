//
//  SwiftUIView.swift
//  Court Counter
//
//  Created by Richard Uzor on 04/07/2023.
//

import SwiftUI

struct TeamNamesHeaderView: View {
    
    let offsetY: Double
    let offsetX: Double
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color.gray)
                .rotationEffect(Angle(degrees: 45))
                .offset(y: offsetY)
                .offset(x: offsetX)
                
            VStack{
                Text("Court Counter")
                    .foregroundColor(Color.white)
                    .bold()
                    .font(.title)
                
                Text("Keep counting the court points")
                    .foregroundColor(Color.white)
                    .font(.subheadline)
                    
            }
            .offset(y: -120)
        }
    }
}

struct TeamNamesHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TeamNamesHeaderView(offsetY: -200, offsetX: -150)
    }
}
