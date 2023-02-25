//
//  MainView.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 25.02.2023.
//

import UIKit

final class MainView: BaseInfoView {
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Корзина пуста"
        label.textColor = .black
        label.font = R.Font.sfBold(with: 24)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "Начните с подборок на главной странице или найдите нужный товар через поиск"
        label.numberOfLines = 2
        label.textColor = R.Colors.grey
        label.font = R.Font.sfRegular(with: 12)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Главная", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = R.Colors.primary
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
}

extension MainView {
    override func setupViews() {
        super.setupViews()
        
        addSubview(mainLabel)
        addSubview(secondLabel)
        addSubview(button)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            mainLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            mainLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            secondLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 10),
            secondLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            secondLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            
            button.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.heightAnchor.constraint(equalToConstant: 38),
            button.widthAnchor.constraint(equalToConstant: 118),
            
        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .none
        

    }
}
