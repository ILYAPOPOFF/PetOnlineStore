//
//  CategoriesCollectionView.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

final class CategoriesCollectionView: BaseInfoView {
    
    private let idFavoritiesCell = "Cell"
    
    private var category = MockData.shared.pageData
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = #colorLiteral(red: 0.9688200355, green: 0.9689182639, blue: 0.9719584584, alpha: 1)
        collection.showsHorizontalScrollIndicator = false
        return collection
    }()
    
}

extension CategoriesCollectionView {
    override func setupViews() {
        super.setupViews()
        
        //category = fetchData()
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(CategoriesCell.self, forCellWithReuseIdentifier: idFavoritiesCell)
        
        addSubview(collectionView)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            collectionView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            collectionView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0),
            collectionView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0)
            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .none
        

    }
}

extension CategoriesCollectionView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch category[indexPath.section] {
            
        case .categories(let categories):
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCell.identifier, for: indexPath) as! CategoriesCell
            
            cell.set(image: categories[indexPath.row].image, title: categories[indexPath.row].name)
            return cell
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.frame.width/1
        return CGSize(width: 106, height: 123)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("??????????????????")
    }
    
    
}

