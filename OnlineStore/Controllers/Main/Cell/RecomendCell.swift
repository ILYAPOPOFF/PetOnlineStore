//
//  RecomendCell.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 22.02.2023.
//

import UIKit

class RecomendCell: UICollectionViewCell {
    
    static let identifier = "Cell"
    
    private let image: UIImageView = {
        let image = UIImageView(image: UIImage(named: "iphone_card"))
        image.backgroundColor = .none
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    private let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "12 000 ₽"
        label.font = R.Font.sfBold(with: 16)
        label.textColor = .black
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Силиконовый чехол MagSafe для iPhone 14"
        label.font = R.Font.sfRegular(with: 12)
        label.textColor = R.Colors.grey
        label.numberOfLines = 2
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let buttonBasket: UIButton = {
        let button = UIButton()
        button.setTitle("В корзину", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9656803012, green: 0.965680182, blue: 0.965680182, alpha: 1)
        button.tintColor = R.Colors.grey
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let buttonFavorites: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.9656803012, green: 0.965680182, blue: 0.965680182, alpha: 1)
        button.tintColor = R.Colors.grey
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let buttonStackView: UIStackView = {
        let view = UIStackView()
        view.distribution = .fillProportionally
        view.axis = .horizontal
        view.spacing = 6
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
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
        addSubview(priceLabel)
        addSubview(nameLabel)
        //addSubview(buttonBasket)
        addSubview(buttonStackView)
        
        [buttonBasket, buttonFavorites].forEach(buttonStackView.addArrangedSubview)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RecomendCell {
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            image.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            image.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            image.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -24),
            image.centerXAnchor.constraint(equalTo: centerXAnchor),
            //image.widthAnchor.constraint(equalToConstant: 98),
            image.heightAnchor.constraint(equalToConstant: 112),
            
            priceLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 24),
            priceLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            priceLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            nameLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: 6),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            nameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            buttonStackView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12),
            buttonStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            buttonStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            buttonStackView.heightAnchor.constraint(equalToConstant: 32)
            //priceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16)
            
        ])
    }
}
