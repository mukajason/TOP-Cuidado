//
//  LanguageScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct LanguageScreen: View {
    var body: some View {
        ZStack{
            ScreenBackground()
            
            VStack{
                Text("Select a language")
                HStack(spacing: 30) {
                    
                    NavigationLink(destination: AgeScreen()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 150, height: 150)
                                .foregroundColor(Color("AccentColor"))
                            VStack {
                                Image("english-lan")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70, height: 70, alignment: .center)
                                Text("English")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }//: ZSTACK
                    
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 150, height: 150)
                            .foregroundColor(Color("AccentColor"))
                        VStack {
                            Image("spanish-lan")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70, height: 70, alignment: .center)
                            Text("Spanish")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }

                    
                }
            }
        }
    }
}

struct LanguageScreen_Previews: PreviewProvider {
    static var previews: some View {
        LanguageScreen()
    }
}
