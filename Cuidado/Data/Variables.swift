//
//  Variables.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/28/22.
//

import Foundation

struct MyVariables {
    static var ageGroup = "13-16"
    static var characterName = "Mario"
    static var characterPronoun1 = "he"
    static var characterPronoun2 = "his"
    static var characterPronoun3 = "him"
    static var characterPronoun4 = "himself"
    
}
// pronouns he/his/him/himself
// pronouns she/her/her/herself


let storyData13 : [Story] = [
    Story(thought: """
                    Everyone knows that
                    \(MyVariables.characterName) loves to paint and
                    have fun with \(MyVariables.characterPronoun2) friends.
                    Attending a couple of \(MyVariables.characterPronoun2) friends’
                    parties, \(MyVariables.characterPronoun2) friends noticed that
                    \(MyVariables.characterPronoun1) has been isolating \(MyVariables.characterPronoun4) and
                    not participating in painting and
                    having fun with \(MyVariables.characterPronoun2) friends
                    """ ,
                    
          question: "Do you think \(MyVariables.characterName) is going through some challenges?",
          answers: ["Yes, \(MyVariables.characterPronoun1) is", "No, \(MyVariables.characterPronoun1) is not"]
         ),
    Story(thought: """
                    While at lunch, \(MyVariables.characterName)
                    complains of having
                    constant difficulty sleeping to his
                    friends. Across the hall, his friend
                    complains of constantly sleeping
                    excessively to \(MyVariables.characterPronoun2) friends as well.
                    """ ,
                    
          question: "Can you relate to \(MyVariables.characterName)’s sleep pattern?",
          answers: ["Yes", "No"]
         ),
    Story(thought: """
                    \(MyVariables.characterName) has been an A
                    student for the last two years.
                    Recently, all \(MyVariables.characterPronoun2) grades have declined
                    significantly.
                    His parents and teachers have voiced
                    their care and concern about \(MyVariables.characterPronoun3).
                    """ ,
                    
          question: "Should \(MyVariables.characterName) share \(MyVariables.characterPronoun2) feelings with \(MyVariables.characterPronoun2) parents/guardian/teacher?",
          answers: ["Yes", "No"]
         ),
]

let storyData16 : [Story] = [
    Story(thought: """
                    The hurricane hits the town
                    where Sarah lives and many
                    issues that affect Sophia
                    are discovered as
                    a consequence of this
                    hurricane
                    """ ,
                    
          question: "What type of issue affects Sarah the most?",
          answers: ["Lack of running and/or clean water", "Issues could be lack of power", "Crops are damaged, so low food supply "]
         ),
    Story(thought: """
                    Sarah is having trouble
                    obtaining clean water,
                    which ends up with her
                    having trouble with her
                    hygiene.
                    """ ,
                    
          question: "If you are Sarah’s classmate, how would you react?",
          answers: ["Tease Sarah", "Say nothing", "Attempt to help Sarah by talking to a teacher"]
         ),
    Story(thought: """
                    You offer Sarah a place
                    that has running water
                    """ ,
          
          question: "How likely is this going to happen?",
          answers: ["Not likely", "Somewhat likely", "Very likely"]
         ),
]


let moodData : [Mood] = [
    Mood(emoji: "😁", name: "Happy"),
    Mood(emoji: "😞", name: "Sad"),
    Mood(emoji: "😥", name: "Anxious"),
    Mood(emoji: "😡", name: "Angry"),
    Mood(emoji: "🥱", name: "Tired"),
    Mood(emoji: "🫤", name: "Confused"),
]

let avatarData : [Avatar] = [
    Avatar(image: "Mario", name: "Mario", color: "MarioColor"),
    Avatar(image: "Sarah", name: "Sarah", color: "SarahColor"),
    Avatar(image: "Louis", name: "Louis", color: "LouisColor"),

]
