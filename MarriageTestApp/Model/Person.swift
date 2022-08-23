//
//  Person.swift
//  MarriageTestApp
//
//  Created by Naveen Reddy on 21/10/21.
//

import Foundation

struct Person {
    var name: String
    var age: String
    var gender: Gender
    
    var isMarriageAge: Bool {
        if let currentAge = Double(age), (currentAge > 18 && currentAge < 100 ) && gender == .female   {
            return true
        } else if let currentAge = Double(age), (currentAge > 21 && currentAge < 100) && gender == .male   {
            return true
        }
        return false
    }
    
    var warningMessage: String {
        return "for \(gender.rawValue) age must be > \(gender == .male ? "21" : "18")"
    }
}
