//
//  AnswerCard.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 12/1/22.
//

import SwiftUI

struct AnswerCard: View {
    var answerText: String
    var width: Double = 180
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: width, height: 47)
                .foregroundColor(.white)
            
            Text(answerText)
                .foregroundColor(.accentColor)
                .bold()
                .padding()
        }
    }
}


struct AnswerCard_Previews: PreviewProvider {
    static var previews: some View {
        AnswerCard(answerText: storyData13[0].answers[0])
    }
}
