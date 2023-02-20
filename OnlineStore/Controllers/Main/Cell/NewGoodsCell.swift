//
//  NewGoodsCell.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 20.02.2023.
//

import UIKit

class NewGoodsCell: UICollectionViewCell {
    
    static let identifier = "Cell"
    
    private let image: UIImageView = {
        let image = UIImageView(image: UIImage(named: "iphone_card"))
        image.backgroundColor = .none
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let newLabel: UILabel = {
        let label = UILabel()
        label.text = "New"
        label.font = R.Font.sfRegular(with: 12)
        label.textColor = R.Colors.orange
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "iPhone 14 Pro"
        label.font = R.Font.sfBold(with: 16)
        label.textColor = .black
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "90 000 ₽"
        label.font = R.Font.sfRegular(with: 12)
        label.textColor = R.Colors.grey
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 16
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 9
        layer.shadowOffset = CGSize(width: 0, height: 2)
        layer.position = CGPoint(x: 0, y: 0)
        
        addSubview(image)
        addSubview(newLabel)
        addSubview(mainLabel)
        addSubview(priceLabel)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension NewGoodsCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            //image.widthAnchor.constraint(equalToConstant: 98),
            image.heightAnchor.constraint(equalToConstant: 89),
            
            newLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 24),
            newLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            newLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            mainLabel.topAnchor.constraint(equalTo: newLabel.bottomAnchor, constant: 4),
            mainLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            mainLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            priceLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 12),
            priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
        ])
    }
}
