//
//  Movie.swift
//  MakeSchool-TA-CodingChallenge
//
//  Created by Tony Cioara on 5/27/18.
//  Copyright © 2018 Tony Cioara. All rights reserved.
//

import Foundation

struct Movie {
    
    let title: String
    let imageUrlString: String
    let date: String
    let price: String
    let iTunesLinkString: String
    
    init(title: String, imageUrlString: String, date: String, price: String, iTunesLinkString: String) {
        self.title = title
        self.imageUrlString = imageUrlString
        self.date = date
        self.price = price
        self.iTunesLinkString = iTunesLinkString
    }
}
