//
//  MovieCell.swift
//  MakeSchool-TA-CodingChallenge
//
//  Created by Tony Cioara on 5/27/18.
//  Copyright © 2018 Tony Cioara. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    var movie: Movie!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    func configure(movie: Movie) {
        self.movie = movie
        self.titleLabel.text = movie.title
        self.dateLabel.text = movie.date
        self.priceLabel.text = String(movie.price)
    }
}
