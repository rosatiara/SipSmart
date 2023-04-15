//
//  Myth.swift
//  SipSmart
//
//  Created by Rosa Tiara Galuh on 15/04/23.
//

import Foundation
import SwiftUI

struct Myth: Identifiable {
    var id = UUID().uuidString
    var mythTheme: Color
    var mythImage: String
    var mythDesc: String
    var fact: String
}
// pink, yellow, green, blue
let myths = [
    Myth(mythTheme: Color("pinkTheme"), mythImage: "cube1", mythDesc: "Sugar causes cancer", fact: "Yaafasjgha skjdk gha jfkdladfafadjfa klghaldkhlgdahgkj. Hfajkga hfdjkgl Hahfka"),
    
    Myth(mythTheme: Color("yellowTheme"), mythImage: "cube2", mythDesc: "Cutting out sugar completely is the best way to be healthy.", fact: "Yaafasjgha skjdk gha jfkdladfafadjfa klghaldkhlgdahgkj. Hfajkga hfdjkgl Hahfka"),
    
    Myth(mythTheme: Color("greenTheme"), mythImage: "cube3", mythDesc: "All sugars are the same.", fact: "Yaafasjgha skjdk gha jfkdladfafadjfa klghaldkhlgdahgkj. Hfajkga hfdjkgl Hahfka"),
    
    Myth(mythTheme: Color("blueTheme"), mythImage: "cube4", mythDesc: "Sugar causes cancer", fact: "Yaafasjgha skjdk gha jfkdladfafadjfa klghaldkhlgdahgkj. Hfajkga hfdjkgl Hahfka"),
    
    Myth(mythTheme: Color("yellowTheme"), mythImage: "cube1", mythDesc: "Sugar causes cancer", fact: "Yaafasjgha skjdk gha jfkdladfafadjfa klghaldkhlgdahgkj. Hfajkga hfdjkgl Hahfka"),

]

