//
//  MenuCard.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 12/1/22.
//

import SwiftUI

struct MenuCard: View {
    var backGroundColor: String = "AccentColor"
    var menuImage: String = "english-lan"
    var menuName: String = "Game"
    var menuDescription: String = "This is a game and it is a good way to play , go and be great"
    var body: some View {
        HStack {
            // rendering mode original to avoid colorization when embedded in a Navigation link
            Image(menuImage)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width:80, height: 80, alignment: .center)
                .shadow(color: Color(.black).opacity(0.3) ,  radius: 3, x: 2, y: 2)
                .background(Color(backGroundColor).opacity(0.3))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(menuName)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(menuDescription)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } //: VSTACK
            
        }//: HSTACK
    }
}

struct MenuCard_Previews: PreviewProvider {
    static var previews: some View {
        MenuCard()
    }
}
