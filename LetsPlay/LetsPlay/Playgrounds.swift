//
//  Playgrounds.swift
//  LetsPlay
//
//  Created by Jadhav,Preethi Eshwarlal on 4/29/22.
//

import Foundation

struct Playground {
    var playgroundName : String
    var playgroundImages :[String]
    var latitude : Decimal
    var longitude : Decimal
    var timimg : String
    var playgrroundDesc : String
    var playgroundIcon : String
    var address : String
    
}
 
var data1 = [Playground(playgroundName: "Busch Stadium", playgroundImages: ["PG1","PG2","PG3","PG4"], latitude: 39.4665198, longitude: -94.786374, timimg: "9AM - 6PM", playgrroundDesc: "On April 10, 2006, the Cardinals opened their new 46,000 seat retro-style downtown ballpark with a 6-4 win over the Milwaukee Brewers. The Cardinals also became the first team in almost 100 years to win a World Series Championship in the inaugural season of a new ballpark. The new Busch Stadium hosted the 80th MLB All-Star Game, in July 2009.", playgroundIcon: "Cricket", address: "700 Clark Ave, St. Louis, MO 63102"),
   Playground(playgroundName: "Balls-N-Strikes", playgroundImages: ["KK1","KK2","KK3","KK4"], latitude:39.4531539, longitude: -94.9592001, timimg: "9AM - 6PM", playgrroundDesc: "A baseball field, also called a ball field or baseball diamond, is the field upon which the game of baseball is played. The term can also be used as a metonym for a baseball park.", playgroundIcon: "Baseball", address: "5414 Hailey, Springdale, AR 72762"),
     Playground(playgroundName: "Aquatic Center", playgroundImages: ["SS1","SS2","SS3","SS4"], latitude:-94.8862976, longitude: 40.3570688, timimg: "9AM - 6PM", playgrroundDesc: "Maryville Parks and Recreation aquatic and swimming programs provide opportunities for fitness, skill development, and recreational fun. Children can participate in group or individual atmosphere's. MPR is committed to not only teaching the skills of swimming, the dangers of swimming without adult supervision and the importance of sun block as well.", playgroundIcon: "Swimming", address: "Maryville Community Center 1407 N. Country Club Rd Suite 200,Maryville, MO 64468"),
     Playground(playgroundName: "Bearcat Stadium Maryville", playgroundImages: ["BS1","BS2","BS3","BS4","BS5"], latitude:-94.885676, longitude: 40.350575, timimg: "9AM - 6PM", playgrroundDesc: "Northwest Missouri State University’s football and track and field facility has been called Bearcat Stadium since 2004. This beautiful, state-of-the-art facility, called “the crown jewel of the MIAA” by the Kansas City Star, was formerly known as Rickenbrode Stadium.", playgroundIcon: "FootBall", address: "N Grand Ave, Maryville, MO 64468"),
]
