//
//  ProfileBar.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 12/1/22.
//

import SwiftUI

struct ProfileBar: View {
    var body: some View {
        HStack{
            VStack{
                Text("Hello Salvador")
                    .font(.title)
                    .padding(.horizontal)
                Text("You're amazing 👏🏽🤩")
                    .font(.headline)
                    .foregroundColor(.accentColor)
            }
            Spacer()

            Image("english-lan")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
                .foregroundColor(.gray.opacity(0.7))
        }
    }
}

struct ProfileBar_Previews: PreviewProvider {
    static var previews: some View {
        ProfileBar()
    }
}
