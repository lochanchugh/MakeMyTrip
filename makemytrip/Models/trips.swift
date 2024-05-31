//
//  trips.swift
//  makemytrip
//
//  Created by Lochan on 17/03/24.
//

import Foundation

struct Trip: Identifiable, Hashable{
    let id = UUID()
    let name: String
    let pic: String
    let price: Int
    let dist: Double
    
}
