//
//  ScreenBackground.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct ScreenBackground: View {
    var body: some View {
        VStack {
            Circle()
                .opacity(0.3)
                .foregroundColor(Color("CircleBlue"))
                .offset(x: 181)
                .frame(width: 360, height: 360, alignment: .center)
            
            Spacer()

            Circle()
                .opacity(0.3)
                .foregroundColor(Color("CircleBlue"))
                .frame(width: 360, height: 360, alignment: .center)
                .offset(x: -181)

 
            
        }
    }
}

struct ScreenBackground_Previews: PreviewProvider {
    static var previews: some View {
        ScreenBackground()
    }
}
