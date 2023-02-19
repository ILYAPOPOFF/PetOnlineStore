//
//  MainController.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

class MainController: UIViewController {
    
    private let search = UISearchController()
    
    
    
    private let categoiesCollectionNew : CategoriesCollectionView = {
        let view = CategoriesCollectionView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        
        view.addSubview(categoiesCollectionNew)
        
        title = "Главная"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = search
        view.backgroundColor = .white
        extendedLayoutIncludesOpaqueBars = true
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(title: "Норильск", style: .plain, target: self, action: #selector(rightBarButton))]
        
    }
    
    
    @objc func rightBarButton() {
        print("Норильск")
    }

}

extension MainController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            categoiesCollectionNew.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            categoiesCollectionNew.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            categoiesCollectionNew.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            categoiesCollectionNew.heightAnchor.constraint(equalToConstant: 123),
            
            
        
        ])
    }
}
