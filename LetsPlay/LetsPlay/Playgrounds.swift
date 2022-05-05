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
    var latitude : Double
    var longitude : Double
    var timimg : String
    var playgrroundDesc : String
    var playgroundIcon : String
    var address : String
    
}
 
var data1 = [
    
    Playground(playgroundName: "Busch Stadium", playgroundImages: ["PG1","PG2","PG3","PG4"], latitude: 90.1928209, longitude: 38.6226188, timimg: "5AM - 6PM", playgrroundDesc: "On April 10, 2006, the Cardinals opened their new 46,000 seat retro-style downtown ballpark with a 6-4 win over the Milwaukee Brewers. The Cardinals also became the first team in almost 100 years to win a World Series Championship in the inaugural season of a new ballpark. The new Busch Stadium hosted the 80th MLB All-Star Game, in July 2009.", playgroundIcon: "Cricket", address: "700 Clark Ave, St. Louis, MO 63102"),
       Playground(playgroundName: "Balls-N-Strikes", playgroundImages: ["KK1","KK2","KK3","KK4"], latitude:93.30136, longitude: 37.578888, timimg: "9AM - 6PM", playgrroundDesc: "A baseball field, also called a ball field or baseball diamond, is the field upon which the game of baseball is played. The term can also be used as a metonym for a baseball park.", playgroundIcon: "BaseBall", address: "5414 Hailey, Springdale, AR 72762"),
         Playground(playgroundName: "Aquatic Center", playgroundImages: ["SS1","SS2","SS3","SS4"], latitude:94.8862976, longitude: 40.3570688, timimg: "9AM - 6PM", playgrroundDesc: "Maryville Parks and Recreation aquatic and swimming programs provide opportunities for fitness, skill development, and recreational fun. Children can participate in group or individual atmosphere's. MPR is committed to not only teaching the skills of swimming, the dangers of swimming without adult supervision and the importance of sun block as well.", playgroundIcon: "Swimming", address: "Maryville Community Center 1407 N. Country Club Rd Suite 200,Maryville, MO 64468"),
         Playground(playgroundName: "Bearcat Stadium Maryville", playgroundImages: ["BS1","BS2","BS3","BS4","BS5"], latitude:94.885676, longitude: 40.350575, timimg: "9AM - 6PM", playgrroundDesc: "Northwest Missouri State University’s football and track and field facility has been called Bearcat Stadium since 2004. This beautiful, state-of-the-art facility, called “the crown jewel of the MIAA” by the Kansas City Star, was formerly known as Rickenbrode Stadium.", playgroundIcon: "FootBall", address: "N Grand Ave, Maryville, MO 64468"),
    
    
    Playground(playgroundName: "Rajiv Gandhi High Altitude Training Centre",
                        playgroundImages: ["HO1","HO2","HO3","HO4"],
                        latitude:  77.42273604978068,
                        longitude: 31.20124162361137,
                        timimg: "9AM - 6PM",
                        playgrroundDesc: "Shilaroo Hockey Stadium is a multi-purpose stadium in Shilaroo, Himachal Pradesh. The stadium was constructed and maintained by Sports Authority of India and located in Netaji Subhash High Altitude Training Centre, Shilaroo which is 52 km from Shimla",
                        playgroundIcon: "Hockey-1",
                        address: "Netaji Subhash High Altitude Training Centre, Shilaroo, Himachal Pradesh"),
   Playground(playgroundName: "Copper Box Arena",
              playgroundImages: ["FE1","FE2","FE3","FE4"],
              latitude:41.8807,
              longitude: 87.6742,
              timimg: "9AM - 6PM",
              playgrroundDesc: "The Copper Box Arena is a multi-sport venue built for the 2012 Summer Olympics, located in the Queen Elizabeth Olympic Park in London, England",
              playgroundIcon: "volleyball",
              address: "Queen Elizabeth Olympic Park"),
     Playground(playgroundName: "Wimbledon Centre Court",
                playgroundImages: ["TE1","TE2","TE3","TE4","TE5"],
                latitude: -0.21406966087884519,
                longitude: 51.43494461933879,
                timimg: "9AM - 6PM",
                playgrroundDesc: "Centre Court is the main court at The Championships, Wimbledon, the third annual Grand Slam event of the tennis calendar. It is considered the world's most famous tennis court. It incorporates the clubhouse of the All England Lawn Tennis and Croquet Club",
                playgroundIcon: "Tennis",
                address: "4 Church Rd, London SW19 5AG, United Kingdom"),
     Playground(playgroundName: "FNB Stadium",
                playgroundImages: ["RU1","RU2","RU3","RU4","RU5"],
                latitude:  28.21001749774273,
                longitude: -22.987019021952534,
                timimg: "9AM - 6PM",
                playgrroundDesc: "First National Bank Stadium or simply FNB Stadium, also known as Soccer City and The Calabash, is an association football and Rugby union stadium located in Nasrec, bordering the Soweto area of Johannesburg, South Africa",
                playgroundIcon: "TableTennis",
                address: "Soccer City Ave, Nasrec, Johannesburg, 2147, South Africa"),
             
             Playground(playgroundName: "Madison Square Garden",
                                     playgroundImages: ["BO1","BO2","BO3","BO4"],
                                     latitude: -73.96319983923522,
                                     longitude: 41.32167623320841,
                                     timimg: "9AM - 6PM",
                                     playgrroundDesc: "Madison Square Garden, colloquially known as The Garden or by its initials MSG, is a multi-purpose indoor arena in New York City. It is located in Midtown Manhattan between Seventh and Eighth avenues from 31st to 33rd Street, above Pennsylvania Station.",
                                     playgroundIcon: "Squash",
                                     address: "4 Pennsylvania Plaza, New York, NY 10001"),
                Playground(playgroundName: "Augusta National Golf Club",
                           playgroundImages: ["GO1","GO2","GO3","GO4"],
                           latitude: -81.9433910255461,
                           longitude: 34.213760728713595,
                           timimg: "9AM - 6PM",
                           playgrroundDesc: "Augusta National Golf Club, sometimes referred to as Augusta or the National, is a golf club in Augusta, Georgia, United States. Unlike most private clubs which operate as non-profits, Augusta National is a for-profit corporation, and it does not disclose its income, holdings, membership list, or ticket sales",
                           playgroundIcon: "Golf",
                           address: "2604 Washington Rd, Augusta, GA 30904"),
    Playground(playgroundName: "Wrestling Arena Coliseo",
                                 playgroundImages: ["WR1","WR2","WR3","WR4"],
                                 latitude:    -99.10021913205809,
                                 longitude: 20.11243905779584,
                                 timimg: "9AM - 6PM",
                                 playgrroundDesc: "Arena Coliseo is an indoor arena in Mexico City, Mexico located at República del Perú 77 in the Cuauhtémoc borough. The arena is primarily used for professional wrestling, or lucha libre, shows promoted by Consejo Mundial de Lucha Libre",
                                 playgroundIcon: "Wrestling",
                                 address: "República de Perú 77, Centro Histórico de la Cdad. de México, Centro, Cuauhtémoc, 06000 Ciudad de México, CDMX, Mexico"),
                  Playground(playgroundName: "Estadio Monumental Antonio Vespucio Liberti",
                             playgroundImages: ["SO1","SO2","SO3","SO4","SO5"],
                             latitude:   -58.48549261563012,
                             longitude: -32.73868802784755,
                             timimg: "9AM - 6PM",
                             playgrroundDesc: "Estadio Mâs Monumental, also referred to as River Plate Stadium, Monumental de Nuñez, or simply El Monumental, is a stadium in the Belgrano, Buenos Aires, Argentina, home of the football club River Plate. It was opened on 26 May 1938 and named after former club president Antonio Vespucio Liberti",
                             playgroundIcon: "Soccer",
                             address: "Av. Pres. Figueroa Alcorta 7597, C1428 CABA, Argentina")
]
