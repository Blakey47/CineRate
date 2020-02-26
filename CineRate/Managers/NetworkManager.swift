//
//  NetworkManager.swift
//  CineRate
//
//  Created by Darragh Blake on 26/02/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import UIKit

class NetworkManager {
    static let shared = NetworkManager()
    private let baseURL = "https://api.themoviedb.org/3/"
    private let apiKey = "api_key=**********"
    
    private init() {}
    
    func getPopularMovieList() {
        let urlString = baseURL + "movie/popular?" + apiKey + "&language=en-US&page=1"
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print("An error has occured")
                    return
                }
                if let safeData = data {
                    if let movies = self.parseJSON(safeData) {
                        print(movies)
                    }
                }
            }
            task.resume()
        }
    }
    
    func parseJSON(_ data: Data) -> Movies? {
        
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(Movies.self, from: data)
            return decodedData
            
        } catch {
            print(error)
            return nil
        }
    }
}
