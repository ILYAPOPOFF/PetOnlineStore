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
        view.distribution = .fill
        view.axis = .vertical
        view.spacing = 12
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var scrollView : UIScrollView = {
        let views = UIScrollView()
        views.contentSize = contentSize
        views.frame = view.bounds
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()
    
    private lazy var contentView : UIView = {
        let views = UIView()
        views.frame.size = contentSize
        views.translatesAutoresizingMaskIntoConstraints = false
        return views
    }()
    
    private var contentSize: CGSize {
        CGSize(width: view.frame.width, height: view.frame.height)
    }

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
        scrollView.addSubview(contentView)
        contentView.addSubview(stackView)
        
        
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
            
            categoiesCollectionNew.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            categoiesCollectionNew.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            categoiesCollectionNew.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            categoiesCollectionNew.heightAnchor.constraint(equalToConstant: 123),
            
            newGoodsView.topAnchor.constraint(equalTo: categoiesCollectionNew.bottomAnchor, constant: 12),
            newGoodsView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            newGoodsView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            newGoodsView.heightAnchor.constraint(equalToConstant: 290),
            //newGoodsView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
            recomendView.topAnchor.constraint(equalTo: newGoodsView.bottomAnchor, constant: 12),
            recomendView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            recomendView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            //recomendView.heightAnchor.constraint(equalToConstant: 800),
            recomendView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            //scrollView.widthAnchor.constraint(equalToConstant: 290),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 0),
            
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            //stackView.widthAnchor.constraint(equalToConstant: 290),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
        ])
    }
}
