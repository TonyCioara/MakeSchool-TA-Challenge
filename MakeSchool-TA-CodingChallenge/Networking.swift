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
    
    func fetchResults(callBack: @escaping (Array<Movie>) -> ()) {
        
        let baseUrl = "https://itunes.apple.com/us/rss/topmovies/limit=25/json"
        
        let request = URLRequest(url: URL(string: baseUrl)!)
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            var movieArray: [Movie] = []
            
            guard
                let fetchResults = data,
                let jsonData = try? JSON(fetchResults),
                let feedData = try? jsonData["feed"].rawData(),
                let jsonFeed = try? JSON(feedData),
                let entryData = try? jsonFeed["entry"].rawData(),
                let jsonEntry = try? JSON(entryData)
                else {print("JSON ERROR"); return}
            
            
            for jsonItem in jsonEntry.arrayValue {
                guard
                    let title = jsonItem["im:name"]["label"].rawString(),
                    let price = jsonItem["im:price"]["label"].rawString(),
                    let date = jsonItem["im:releaseDate"]["attributes"]["label"].rawString(),
                    let imageUrlString = jsonItem["im:image"][2]["label"].rawString(),
                    let iTunesLinkString = jsonItem["link"][0]["attributes"]["href"].rawString()
                    else {print("JSON ERROR 2"); return}
                
                let movie = Movie(title: title, imageUrlString: imageUrlString, date: date, price: price, iTunesLinkString: iTunesLinkString)
                
                movieArray.append(movie)
                
                callBack(movieArray)
            }
            
        } .resume()
    }
}
