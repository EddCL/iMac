//
//  User.swift
//  Login
//
//  Created by Abner Castro on 9/3/18.
//  Copyright © 2018 Abner Castro. All rights reserved.
//
import Foundation

class User {
    
    var name = "Edd"
    var lastName = "Carrillo"
    var username = "edd"
    var birthday = Date()
    var email = "ed.carrillo.l97@hotmail.com"
    var phone = "5558405262"
    var userID = "QWERTY"
    var password = ""
    
    //Init for login
    init(name: String, lastName: String, password: String) {
        self.name = name
        self.lastName = lastName
        self.password = password
    }
    
    //Init for signup
    init(name: String, lastName: String, password: String, birthday: Date, email: String, phone: String, userID: String) {
        self.name = name
        self.lastName = lastName
        self.password = password
        self.birthday = birthday
        self.email = email
        self.phone = phone
        self.userID = userID
    }
    
}















