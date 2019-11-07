//
//  Experience.swift
//  Lab2
//
//  Created by Erik Sveningsson on 2019-11-07.
//  Copyright © 2019 Erik Sveningsson. All rights reserved.
//

import Foundation

class Experience {
    let section: String
    let item: String
    let year: String
    let image: String
    let description: String
    
    // By setting default values here we don't have to set these parameters when creating the object
    init(section: String = "Section", item: String = "item", year: String = "year", image: String = "image", description: String = "description") {
        self.section = section
        self.item = item
        self.year = year
        self.image = image
        self.description = description
    }
}
