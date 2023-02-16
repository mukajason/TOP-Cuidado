//
//  ConsentLabel.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 12/1/22.
//

import SwiftUI

struct ConsentLabel: View {
    // MARK: PPTIES
    var labelText: String
    
    
    // MARK: BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .cornerRadius(9)
        } //: HSTACK

    }
}

struct ConsentLabel_Previews: PreviewProvider {
    static var previews: some View {
        ConsentLabel(labelText: "Cuidado")
    }
}
