//
//  UserDetails.swift
//  LetsPlay
//
//  Created by Mallampati,Sreebharath on 5/1/22.
//

import Foundation


struct User{
    var userId:String;
    var userName:String;
    var userEmail: String;
    var userPassword: String;
    var userPhone:String
}

var users: [User] = [User(userId: "dees", userName: "admin", userEmail: "test@test.com", userPassword: "password", userPhone: "989898989")];
var currentLoggedInUser: String = "";
