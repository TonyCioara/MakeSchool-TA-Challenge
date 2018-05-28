//
//  Movie.swift
//  MakeSchool-TA-CodingChallenge
//
//  Created by Tony Cioara on 5/27/18.
//  Copyright © 2018 Tony Cioara. All rights reserved.
//

import Foundation

struct Movie: Codable {
    
    let title: String
    let image: URL
    let date: String
    let price: Float
    let iTunesLink: URL
}
