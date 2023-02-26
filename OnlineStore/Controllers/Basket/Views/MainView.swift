//
//  MainView.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 25.02.2023.
//

import UIKit

final class MainView: BaseInfoView {
    
    private let backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.06).cgColor
        view.layer.shadowOpacity = 1
        view.layer.shadowRadius = 9
        view.layer.shadowOffset = CGSize(width: 0, height: 2)
        view.layer.position = CGPoint(x: 0, y: 0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
    
    public let button: UIButton = {
        let button = UIButton()
        button.setTitle("Главная", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.backgroundColor = R.Colors.primary
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        //button.addTarget(self, action: #selector(actionMainButton), for: .touchUpInside)
        return button
    }()
    
}

extension MainView {
    override func setupViews() {
        super.setupViews()
        
        addSubview(backgroundView)
        backgroundView.addSubview(mainLabel)
        backgroundView.addSubview(secondLabel)
        backgroundView.addSubview(button)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            backgroundView.topAnchor.constraint(equalTo: topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            backgroundView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            backgroundView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            mainLabel.topAnchor.constraint(equalTo: topAnchor, constant: 30),
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

//extension MainView {
//
//    @objc func actionMainButton() {
//        let mainViewController = MainController()
//        mainViewController.hidesBottomBarWhenPushed = true
//
//
//    }
//
//}
