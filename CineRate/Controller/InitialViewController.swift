//
//  InitialViewController.swift
//  CineRate
//
//  Created by Darragh Blake on 25/02/2020.
//  Copyright © 2020 Darragh Blake. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var loginButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    func configure() {
        loginView.layer.cornerRadius = 10
        loginButtonView.layer.cornerRadius = 10
    }

    @IBAction func loginButtonPressed(_ sender: Any) {
        let firstViewController = (storyboard?.instantiateViewController(identifier: "TabBarController"))!
        firstViewController.modalPresentationStyle = .fullScreen
        present(firstViewController, animated: true, completion: nil)
    }
}
