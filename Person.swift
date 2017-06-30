//
//  Person.swift
//  MVCRefresher
//
//  Created by Danny Luong on 6/30/17.
//  Copyright © 2017 dnylng. All rights reserved.
//

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        return _firstName
    }
    
    var lastName: String {
        return _lastName
    }
    
    init(first: String, last: String) {
        self._firstName = first
        self._lastName = last
    }
    
    var fullName: String {
        return "\(_firstName!) \(_lastName!)"
    }
}
