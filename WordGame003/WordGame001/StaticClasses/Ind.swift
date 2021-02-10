//
//  MyIndependentClass.swift
//  WordGame001
//
//  Created by Carl-Staffan Svenbro on 2020-03-19.
//  Copyright © 2020 Carl-Staffan Svenbro. All rights reserved.
//

import Foundation

class Ind
{
    
    static func leftStr(_ n: Int, MyString: String) -> String {
        //returns the n first characters in MyString
        guard n >= 0 else {
            fatalError("n should never negative")
        }
        let index = MyString.index(MyString.startIndex, offsetBy: min(n, MyString.count))
        return String(MyString[..<index])
    }
    
    static func GenerateRandomNumberString(length: Int) -> String {
        let letters = "0123456789"
        return String((0..<length).map{ _ in letters.randomElement()! })
    }//func GenerateRandomString(length: Int) -> String
 
    
    
}
