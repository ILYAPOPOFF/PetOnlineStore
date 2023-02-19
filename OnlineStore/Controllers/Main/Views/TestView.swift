//
//  TestView.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 18.02.2023.
//

import UIKit

class TestView: BaseInfoView {
    
    private let view : UIView = {
        let view = UIView()
        view.backgroundColor = .none
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
}

extension TestView {
    override func setupViews() {
        super.setupViews()
        
        addSubview(view)
        
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            
            view.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 24),
            view.widthAnchor.constraint(equalToConstant: 120),
            view.heightAnchor.constraint(equalToConstant: 24),

        ])
        
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .black
        
        
    }
}
