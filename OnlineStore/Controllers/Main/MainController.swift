//
//  MainController.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

class MainController: UIViewController {
    
    let search = UISearchController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
        title = "Главная"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = search
        view.backgroundColor = .white
        
    }

}
