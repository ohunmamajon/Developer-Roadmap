//
//  RoadBrain.swift
//  RoadMap
//
//  Created by Okhunjon Mamajonov on 2022/02/03.
//




import Foundation

struct StoryBrain {
    
    var storyNumber = 0
    
    let stories = [
        Story(
            title: "Who would you like to be?",
            choice1: "Web developer", choice1Destination: 1,
            choice2: "Mobile developer", choice2Destination: 2
        ),
        Story(
            title: "Then, You have to learn these:",
            choice1: "HTML & CSS, Javascript", choice1Destination: 5,
            choice2: "React", choice2Destination: 5
        ),
        Story(
            title: "Which one you want be:",
            choice1: "ios developer", choice1Destination: 4,
            choice2: "android developer", choice2Destination: 3
        ),
        Story(
            title: "Then, Start learning these:",
            choice1: "Java", choice1Destination: 5,
            choice2: "Android Studio", choice2Destination: 5
        ),
        Story(
            title: "Then You should focus on these:",
            choice1: "Swift", choice1Destination: 5,
            choice2: "Xcode", choice2Destination: 5
        ),
        Story(
            title: "This is the end of this small road map. Press either button to get back to the start",
            choice1: "Good Luck!", choice1Destination: 0,
            choice2: "You can do it!", choice2Destination: 0
        )
    ]
    
    func getStoryTitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    mutating func nextStory(userChoice: String) {
        
        let currentStory = stories[storyNumber]
        if userChoice == currentStory.choice1 {
            storyNumber = currentStory.choice1Destination
        } else if userChoice == currentStory.choice2 {
            storyNumber = currentStory.choice2Destination
        }
    }
    
}


