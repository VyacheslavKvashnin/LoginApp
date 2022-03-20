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
                    hobby: "My favorite hobby is programming. Very fun and entertaining pastime.",
                    detail: """
                            I have always loved computers and technology. At school, I started going to robotics, where we created the simplest commands for robots. It was very interesting for me, and therefore during the lesson I managed to come up with something of my own: loader robots, security guards, smart technology and more, more, more ... I really like it, because you can create so many things!
                            """
                )
        )
    }
}

struct Person {
    let name: String
    let lastname: String
    let hobby: String
    let detail: String
}
