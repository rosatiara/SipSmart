//
//  Myth.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 15/04/23.
//

import Foundation
import SwiftUI

struct Fact: Identifiable {
    var id = UUID().uuidString
    var factTheme: Color
    var factImage: String
    var factTitle: String
    var explanation: String
}
// pink, yellow, green, blue
let myths = [
    Fact(factTheme: Color("pinkTheme"), factImage: "cube1", factTitle: "Sugar has different names. 😲", explanation: "Sugar can go by many different names on ingredient lists, including sucrose, glucose, fructose, maltose, dextrose, and more. These different types of sugars may have varying effects on the body and can be found in various foods and beverages."),
    
    Fact(factTheme: Color("yellowTheme"), factImage: "cube2", factTitle: "Sugar can affect your mood", explanation: "Consuming sugar can lead to a temporary increase in serotonin, a neurotransmitter associated with mood regulation, which can create a temporary feeling of well-being or a \"sugar high.\" However, the subsequent crash in blood sugar levels can lead to feelings of fatigue, irritability, and mood swings."),
    
    Fact(factTheme: Color("greenTheme"), factImage: "cube3", factTitle: "Sugary drinks can lead to poor hydration", explanation: "They may not adequately quench thirst or hydrate the body, as the high sugar content can actually increase the feeling of thirst and lead to increased fluid intake without properly replenishing fluids in the body. This can lead to inadequate hydration, especially during physical activity or hot weather."),
    
    Fact(factTheme: Color("blueTheme"), factImage: "cube4", factTitle: "Sugar has been used for thousands of years", explanation: "Sugar has a long history, with evidence of sugar cane cultivation dating back to ancient times in regions such as India and China. Sugar was initially a luxury item reserved for the wealthy before becoming more widely available and affordable."),
    
    Fact(factTheme: Color("pinkTheme"), factImage: "cube1", factTitle: "Sugar can affect sleep quality", explanation: "Consuming sugary foods or beverages close to bedtime can disrupt sleep quality. High sugar intake before bed can cause blood sugar spikes and crashes, leading to sleep disturbances, such as waking up during the night or feeling restless."),
    
    Fact(factTheme: Color("yellowTheme"), factImage: "cube2", factTitle: "Sugar can affect your mood", explanation: "Consuming sugar can lead to a temporary increase in serotonin, a neurotransmitter associated with mood regulation, which can create a temporary feeling of well-being or a \"sugar high.\" However, the subsequent crash in blood sugar levels can lead to feelings of fatigue, irritability, and mood swings."),
    
    Fact(factTheme: Color("greenTheme"), factImage: "cube3", factTitle: "Sugary drinks can lead to poor hydration", explanation: "They may not adequately quench thirst or hydrate the body, as the high sugar content can actually increase the feeling of thirst and lead to increased fluid intake without properly replenishing fluids in the body. This can lead to inadequate hydration, especially during physical activity or hot weather."),
    
    Fact(factTheme: Color("blueTheme"), factImage: "cube4", factTitle: "Sugar has been used for thousands of years", explanation: "Sugar has a long history, with evidence of sugar cane cultivation dating back to ancient times in regions such as India and China. Sugar was initially a luxury item reserved for the wealthy before becoming more widely available and affordable."),

]
