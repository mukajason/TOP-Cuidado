//
//  SurveyScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct SurveyScreen: View {
    
    var body: some View {
 
            ZStack{
                ScreenBackground()
                VStack {
                    Text("How are you feeling today?")
                        .font(.title3)
                        .bold()
                    
                    
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                        ForEach(moodData) { mood in
                            
                            NavigationLink(destination: MenuScreen()) {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 10)
                                        .frame(width: 150, height: 150)
                                        .foregroundColor(Color("AccentColor"))
                                    VStack {
                                        Text(mood.emoji)
                                            .font(.system(size: 73))
                                            .frame(width: 70, height: 70, alignment: .center)
                                        Text(mood.name)
                                            .foregroundColor(.white)
                                            .bold()
                                    }
                                }
                            } //: ZSTACK
                        }
                        
                        Button(action: {
                            // do smthing
                            
                        }) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 150, height: 150)
                                    .foregroundColor(Color("AccentColor"))
                                VStack {
                                    Image(systemName: "plus")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 70, height: 70, alignment: .center)
                                        .foregroundColor(.white)
                                    Text("Add mood")
                                        .foregroundColor(.white)
                                        .bold()
                                }
                            }
                        } //: ZSTACK
                            
                            

                        
                    }
                    
                    .padding(.top)

                    
                    
                }
            }
        }
}

struct SurveyScreen_Previews: PreviewProvider {
    static var previews: some View {
        SurveyScreen()
    }
}
