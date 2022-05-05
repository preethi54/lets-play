//
//  BookingsData.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 5/2/22.
//

import Foundation


struct Booking{
    var userId:String
    var bookingId: String
    var bookingDate:Date
    var bookingTime:String
    var bookingVenue:String
    var bookingCategory:String
    var playersNumber:String
    var address:String
    
}
var bookingData : [Booking] = []
