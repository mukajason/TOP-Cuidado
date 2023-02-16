//
//  StoryModel.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/29/22.
//

import SwiftUI

struct Story : Identifiable {
    var id = UUID()
    var thought: String
    var question: String
    var answers: [String]
}

struct Mood : Identifiable {
    var id = UUID()
    var emoji: String
    var name: String
}

struct Avatar : Identifiable {
    var id = UUID()
    var image: String
    var name: String
    var color: String
}
