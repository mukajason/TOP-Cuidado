//
//  MainStoryScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct MainStoryScreen: View {
    @State private var numIndex: Int = 0
    var data: [Story] = storyData13
    
    @State private var isDone = false
    
    
    var body: some View {
        ZStack{
            ScreenBackground()
            
            VStack{
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 198, height: 37)
                        .foregroundColor(.accentColor)
                    
                    
                    Text(MyVariables.characterName)
                        .foregroundColor(.white)
                        .bold()
                        
                }
                
                ZStack {
                    HStack {
                        ZStack {
                            Circle()
                                .foregroundColor(Color("MarioColor"))
                            Image("Mario")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 180, height: 180, alignment: .center)
                        }
                        .frame(width: 180, height: 180)
                        .padding()
                        Spacer()
                    }
                    .offset(x:-10, y:200)
                    Image("Callout")
                        .resizable()
                        .scaledToFit()
                        .frame( minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
//                        width: 300, height: 300, alignment: .center)
                        .padding()
                    
                    Text(data[numIndex].thought)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.white)
                        .font(.footnote)
                        .offset(x: -10, y: -36)
                        .padding(.trailing, 35)
                    
                }
                .padding(.bottom, 150)
                
        
                
                ZStack {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(width: 350, height: 50)
                        .foregroundColor(Color("GreyQuestion"))
                    
                    Text(data[numIndex].question)
                        .padding()
                        .foregroundColor(.black)
                        .bold()
                        .multilineTextAlignment(.center)
                    
                    
                }
                
                
                VStack {
        
                    ForEach(data[numIndex].answers, id: \.self){ text in
                        Button(action: {
                            // some code
                            if numIndex < 2 {
                                numIndex += 1
                            }
                            else{
                                numIndex = 0
                                // present a sheet
                                isDone = true
                            }
                            
                        }) {
                            AnswerCard(answerText: text, width: MyVariables.ageGroup == "13-16" ? 180: 317 )
                                
                        }
                        
                    }
                    
                    
                }
                .sheet(isPresented: $isDone){
                    ThanksScreen()
                }

            }

        }
        
    }
}

struct MainStoryScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainStoryScreen()
    }
}
