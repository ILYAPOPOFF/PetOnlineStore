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
    
    private let newGoodsView : NewGoods = {
        let view = NewGoods(with: "New.")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let recomendView : RecomendView = {
        let view = RecomendView(with: "Recomend.")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let stackView : UIStackView = {
        let view = UIStackView()
        //view.distribution = .fillProportionally
        view.axis = .vertical
        view.spacing = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let scrollView : UIScrollView = {
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setConstraints()
    }
    
    private func setupView() {
        
        //view.addSubview(categoiesCollectionNew)
        //view.addSubview(newGoodsView)
        //view.addSubview(recomendView)
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        
        [categoiesCollectionNew, newGoodsView, recomendView].forEach(stackView.addArrangedSubview)
        
        title = "Главная"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.searchController = search
        view.backgroundColor = #colorLiteral(red: 0.9688200355, green: 0.9689182639, blue: 0.9719584584, alpha: 1)
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
            
            categoiesCollectionNew.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 10),
            categoiesCollectionNew.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            categoiesCollectionNew.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            categoiesCollectionNew.heightAnchor.constraint(equalToConstant: 123),
            
            newGoodsView.topAnchor.constraint(equalTo: categoiesCollectionNew.bottomAnchor, constant: 12),
            newGoodsView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 0),
            newGoodsView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: 0),
            newGoodsView.heightAnchor.constraint(equalToConstant: 290),
            //newGoodsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
            recomendView.topAnchor.constraint(equalTo: newGoodsView.bottomAnchor, constant: 12),
            recomendView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            recomendView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            recomendView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 0),
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
        ])
    }
}
