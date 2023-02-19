//
//  CategoriesCollectionView.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

final class CategoriesCollectionView: BaseInfoView {
    
    private let idFavoritiesCell = "Cell"
    
    private var category: [Category] = []
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.translatesAutoresizingMaskIntoConstraints = false
        collection.backgroundColor = .white
        collection.showsHorizontalScrollIndicator = false
        return collection
    }()
    
}

extension CategoriesCollectionView {
    override func setupViews() {
        super.setupViews()
        
        category = fetchData()
        
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
        backgroundColor = .black
        

    }
}

extension CategoriesCollectionView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoriesCell.identifier, for: indexPath) as! CategoriesCell
        let category = category[indexPath.row]
        cell.set(category: category)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = collectionView.frame.width/1
        return CGSize(width: 106, height: 123)
    }
    
    
}






extension CategoriesCollectionView {
    public func fetchData() -> [Category] {
        let cell1 = Category(image: R.Image.Category.mac!, name: "Mac")
        let cell2 = Category(image: R.Image.Category.iphone!, name: "iPhone")
        let cell3 = Category(image: R.Image.Category.ipad!, name: "iPad")
        let cell4 = Category(image: R.Image.Category.appleWatch!, name: "Apple Watch")
        let cell5 = Category(image: R.Image.Category.airPods!, name: "AirPods")
        let cell6 = Category(image: R.Image.Category.airTag!, name: "AirTag")
        let cell7 = Category(image: R.Image.Category.tv!, name: "Apple TV")
        let cell8 = Category(image: R.Image.Category.homePod!, name: "HomePod")
        let cell9 = Category(image: R.Image.Category.cases!, name: "Accessories")
        
        return [cell1, cell2, cell3, cell4, cell5, cell6, cell7, cell8, cell9]
    }
}
