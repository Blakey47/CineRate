//
//  Movies.swift
//  CineRate
//
//  Created by Darragh Blake on 26/02/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import Foundation

struct Movies: Decodable {
    let page: Int
    let total_results: Int
    let total_pages: Int
    let results: [Results]
}

struct Results: Decodable {
    let popularity: Double
    let vote_count: Int
    let poster_path: String
    let id: Int
    let backdrop_path: String
    let original_language: String
    let original_title: String
    let genre_ids: [Int]
    let title: String
    let vote_average: Double
    let overview: String
    let release_date: String
}
