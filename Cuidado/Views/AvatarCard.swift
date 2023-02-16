//
//  AvatarCard.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/29/22.
//

import SwiftUI

struct AvatarCard: View {
    var avatarName: String = "Mario"
    var avatarImage: String = "Mario"
    var avatarColor: String = ""
    var body: some View {
        VStack(spacing: 5) {
            
            ZStack {
                Circle()
                    .foregroundColor(Color(avatarColor))
                Image(avatarImage)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180, alignment: .center)
            }
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 98, height: 37)
                    .foregroundColor(.accentColor)
                
                
                Text(avatarName)
                    .foregroundColor(.white)
                    .bold()
                
            }

        }
        .frame(width: 220, height: 340)
        .cornerRadius(20)
        .padding(.horizontal, 29)
    }
}

struct AvatarCard_Previews: PreviewProvider {
    static var previews: some View {
        AvatarCard()
            .previewLayout(.fixed(width: 220, height:340))
    }
}
