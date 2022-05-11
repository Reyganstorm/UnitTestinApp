//
//  Persone.swift
//  UnitTestinApp
//
//  Created by Руслан Штыбаев on 11.05.2022.
//

import Foundation

class Person {
    let name: String
    let surName: String?
    let phone: String
    
    init(name: String, surName: String? = nil , phone: String) {
        self.name = name
        self.surName = surName
        self.phone = phone
    }
}
