//
//  HomeScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/24/22.
//

import SwiftUI

struct HomeScreen: View {
    // MARK: PPTIES

    
    // MARK: BODY
    
    var body: some View {
        NavigationStack {
            ZStack{
                ScreenBackground()
                
                VStack(spacing: 20) {
                    Spacer()
                    Text("Welcome \nto")
                        .font(.system(size: 36))
                        .bold()
                        .padding(.trailing, 140)
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 15)
                        .padding(.horizontal, 30)
                        .frame(width: 242, height: 72)
     

            
                        
                    Spacer()
                    Text("Youth resilence through positive \n mental reinforcement")
                        .multilineTextAlignment(.center)
                    Spacer()
                    

                     
                    NavigationLink(destination: LanguageScreen()) {
                        Text("Get Started")
                                .padding(.horizontal, 30)

                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                .controlSize(.large)
                
                }
            }
        }

    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
