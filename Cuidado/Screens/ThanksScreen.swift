//
//  ThanksScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 12/1/22.
//

import SwiftUI

struct ThanksScreen: View {
    var body: some View {
        ZStack {
            CircleGroup()
            VStack {
                Text("Wohoo! Thank you for completing a stroyline")
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    .padding()
                Spacer()
                Text("5️⃣ Points")
                    .font(.system(size: 47))
                Spacer()
                Text("Check back next week for a new story and chance to win more points")
                    .multilineTextAlignment(.leading)
                    .font(.title)
                    .padding()
            
              
                
            }
        }
    }
}

struct ThanksScreen_Previews: PreviewProvider {
    static var previews: some View {
        ThanksScreen()
    }
}
