//
//  AgeScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct AgeScreen: View {
    var body: some View {
        ZStack{
            ScreenBackground()
            
            VStack{
                Text("Select your age group")
                HStack(spacing: 30) {
                    
                    NavigationLink(destination: SignUpScreen()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 150, height: 150)
                                .foregroundColor(Color("AccentColor"))
                            VStack(spacing: 0) {
                                Image("age-group1")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 130, height: 100, alignment: .center)
                                Text("13 - 16 yrs")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }
                    
                    
                    NavigationLink(destination: SignUpScreen()) {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 150, height: 150)
                                .foregroundColor(Color("AccentColor"))
                            VStack(spacing: 0){
                                Image("age-group2")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 130, height: 100, alignment: .center)
                                Text("16 - 18 yrs")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }
                    .simultaneousGesture(TapGesture().onEnded{
                        MyVariables.ageGroup = "16-18"
                        print(MyVariables.ageGroup)
                    })

                    
                }
            }
        }
    }}

struct AgeScreen_Previews: PreviewProvider {
    static var previews: some View {
        AgeScreen()
    }
}
