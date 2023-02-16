//
//  MenuScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct MenuScreen: View {
    var body: some View {

       
                List {
                    NavigationLink(destination: ChooseAvatarScreen()) {
                        MenuCard(menuName: "Stroylines", menuDescription: "Go through a short story scenarios !")
                            .padding()
                            
                    }
                    MenuCard(
                        menuName: "Game", menuDescription: "Bored? Play this game and help your character reach goals!"
                   )
                        .padding()
                    MenuCard(menuName: "Chat", menuDescription: "Buddy or mentor, find someone to chat with !")
                        .padding()
                    MenuCard(menuName: "Activities", menuDescription: "Find positive mental nurturing activities near you !")
                        .padding()
                    MenuCard(
                        menuName: "Resources", menuDescription: "Find resources that'll help nurture your mental health")
                        .padding()
                    MenuCard(
                        menuName: "Profile", menuDescription: "Take charge and customize of your profile!")
                        .padding()
                    
                    
                }

        }
    
}

struct MenuScreen_Previews: PreviewProvider {
    static var previews: some View {
        MenuScreen()
    }
}
