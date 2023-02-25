//
//  BagController.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

class BasketController: UIViewController {
    
    private let emptyBasket : MainView = {
        let view = MainView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Корзина"
        view.backgroundColor = #colorLiteral(red: 0.9688200355, green: 0.9689182639, blue: 0.9719584584, alpha: 1)
        
        setupView()
        setConstraints()
        
    }
    
    private func setupView() {
        
        view.addSubview(emptyBasket)
        
    }
    
}

extension BasketController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            
            emptyBasket.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            emptyBasket.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            emptyBasket.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            emptyBasket.heightAnchor.constraint(equalToConstant: 165),
            
        ])
    }
}
