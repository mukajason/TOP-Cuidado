//
//  ChooseAvatarScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct ChooseAvatarScreen: View {
    
    @State private var avatarChosen: Bool = false
    
    init(){
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(Color.accentColor)
        UIPageControl.appearance().pageIndicatorTintColor = .systemGray
    }
    
    
    var body: some View {

            ZStack{
                ScreenBackground()
                VStack {
                    Spacer()
                    Text("Select your avatar")
                        .font(.system(size: 23))
                     
                    
                    TabView {
                        ForEach(avatarData){ item in
                            AvatarCard(avatarName: item.name, avatarImage: item.image, avatarColor: item.color)
                            // add an on tap here to save
                            // data

                        }

                    } //: TAB
                    .tabViewStyle(PageTabViewStyle())
                    .frame(height: 380)
                    .padding(.bottom, 30)
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: MainStoryScreen()) {
                        Text("Start")
                                .padding(.horizontal, 30)
                                .bold()

                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.large)
                    .padding()
    
                }
            }
        
    }
}

struct ChooseAvatarScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChooseAvatarScreen()
    }
}
