//
//  User.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 18.03.2022.
//

import Foundation

struct User {
    
    let login: String
    let password: String
    let person: Person
    
    static func getUsers() -> User {
        
        User(
            login: "User",
            password: "Password",
            person:
                Person(
                    name: "Vyacheslav",
                    lastname: "Kvashnin",
                    hobby: "My favorite hobby is programming. Very fun and entertaining pastime."
                )
        )
    }
}

struct Person {
    let name: String
    let lastname: String
    let hobby: String
}
