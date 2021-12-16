//
//  HomeViewController.swift
//  ViewCode Primiero Projeto
//
//  Created by Douglas Cardoso on 16/12/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    let homeView = HomeView()
    
    override func loadView() {
        self.view = homeView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
