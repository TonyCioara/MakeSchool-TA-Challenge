//
//  Networking.swift
//  MakeSchool-TA-CodingChallenge
//
//  Created by Tony Cioara on 5/27/18.
//  Copyright © 2018 Tony Cioara. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Networking {
    
    func fetchResults(searchTerm: String, callBack: @escaping (Array<Movie>) -> ()) {
        
        let baseUrl = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        
        let request = URLRequest(url: URL(string: baseUrl)!)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            
            guard
                let fetchResults = data,
                let jsonData = try? JSON(fetchResults),
                let movieData = 
            
        }
    }
}
