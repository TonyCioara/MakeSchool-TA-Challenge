//
//  DisplayMovieViewController.swift
//  MakeSchool-TA-CodingChallenge
//
//  Created by Tony Cioara on 5/28/18.
//  Copyright © 2018 Tony Cioara. All rights reserved.
//

import UIKit
import Kingfisher

class DisplayMovieViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var viewButton: UIButton!
    
    var movie: Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.titleLabel.text = self.movie?.title
        self.priceLabel.text = self.movie?.price
        self.dateLabel.text = self.movie?.date
        self.imageView.kf.setImage(with: URL(string: (self.movie?.imageUrlString)!))
        
        self.imageView.contentMode = .scaleAspectFill
        self.imageView.layer.cornerRadius = 5
        self.viewButton.layer.cornerRadius = 5
        
    }
    
    @IBAction func viewButtonPressed(_ sender: Any) {
        
//        Works on a phone, but not o a simmulator
        let url = URL(string: (self.movie?.iTunesLinkString)!)!
        UIApplication.shared.open(url, options: [:], completionHandler: nil)
    }
}
