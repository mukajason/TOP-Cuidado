//
//  ConsentScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 12/1/22.
//

import SwiftUI

struct ConsentScreen: View {
    // MARK: PPTIES
    @Environment(\.presentationMode) var presentationMode
    let consentString: String = """
                            As the parent and/or legal
                            guardian with authority to
                            consent for the minor using
                            this application, I hereby
                            give consent for my child to
                            use the Cuidado app. I
                            understand my child’s
                            participation is voluntary.
                            One may discontinue use of
                            the app at any time. The data
                            collected will be kept
                            confidential and will not be
                            shared. My child’s name will
                            not be stored with the data.
                            Use of the app does not
                            constitute mental health
                            provider services. This
                            consent is valid until the
                            minor turns 18 years of age,
                            but can be revoked at any time.
                            """
    
    
    // MARK: BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20){
                    
                    // MARK: SECTION 1
                    GroupBox(
                        label:
                           ConsentLabel(labelText: "Cuidado")
                    ) {
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
        
                            Text(consentString)
                            .multilineTextAlignment(.leading)
                                .font(.footnote)
                                
                        }
                    }
                    
                    // MARK: SECTION 2
                    
                    // MARK: SECTION 3
                    
    
                    
                } //: VSTACK
                .navigationBarTitle(Text("Consent"), displayMode: .large)
                .navigationBarItems(
                trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                }
                                 
                )
                .padding()
                
            } //: SCROLL

        } //: NAVIGATION

    }
}

struct ConsentScreen_Previews: PreviewProvider {
    static var previews: some View {
        ConsentScreen()
    }
}
