//
//  FirstViewController.swift
//  CineRate
//
//  Created by Darragh Blake on 25/02/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import UIKit

class MoviesVC: UIViewController {

    @IBOutlet weak var popularMoviePoster: UIImageView!
    @IBOutlet weak var popularMovieName: UILabel!
    @IBOutlet weak var popularMovieReleaseDate: UILabel!
    @IBOutlet weak var popularMovieRating: UILabel!
    @IBOutlet weak var popularMovieDescription: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NetworkManager.shared.getPopularMovieList()
    }


}

