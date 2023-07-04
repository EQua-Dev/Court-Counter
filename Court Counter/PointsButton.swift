//
//  PointsButton.swift
//  Court Counter
//
//  Created by Richard Uzor on 04/07/2023.
//

import SwiftUI

struct PointsButton: View {
    
    let btnText: String
    let backgoundColor: Color
    let action: () -> Void
    var body: some View {
       
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgoundColor)
                Text(btnText)
                    .padding(8)
                    .bold()
                    .foregroundColor(Color.white)
                    
            }
            
        }
            
            
    }
}

struct PointsButton_Previews: PreviewProvider {
    static var previews: some View {
        PointsButton(btnText: "+ 2 Points", backgoundColor: Color.green){
            
        }
    }
}
