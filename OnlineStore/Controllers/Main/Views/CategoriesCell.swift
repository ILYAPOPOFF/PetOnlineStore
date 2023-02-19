//
//  CategoriesCell.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 17.02.2023.
//

import UIKit

class CategoriesCell: UICollectionViewCell {
    
    private let imageCategoty: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = .none
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let labelCategory: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        //label.text = "iPhone"
        label.textColor = .black
        label.font = .systemFont(ofSize: 15)
        label.textAlignment = .center
        return label
    }()
    
    static let identifier = "Cell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .clear
        
        
        addSubview(imageCategoty)
        addSubview(labelCategory)
        setConstraints()
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(category: Category) {
        imageCategoty.image = category.image
        labelCategory.text = category.name
    }
    
}

extension CategoriesCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            imageCategoty.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            imageCategoty.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 14),
            imageCategoty.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -14),
            imageCategoty.widthAnchor.constraint(equalToConstant: 78),
            imageCategoty.heightAnchor.constraint(equalToConstant: 51),
            
            labelCategory.topAnchor.constraint(equalTo: imageCategoty.bottomAnchor, constant: 14),
            labelCategory.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelCategory.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
        ])
    }
}


