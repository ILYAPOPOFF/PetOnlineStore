//
//  BaseView.swift
//  OnlineStore
//
//  Created by ILYA POPOV on 18.02.2023.
//

import UIKit

class BaseInfoView: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Font.sfBold(with: 32)
        label.textColor = R.Colors.inActive
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .clear
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    init(with title: String? = nil) {
        
        titleLabel.text = title?.uppercased()
        titleLabel.textAlignment = .left
        
        
        //Так как сначала устанавливаются Констрейты, а только потом title
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        addSubview(titleLabel)
        addSubview(contentView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        let contentTopAnchor : NSLayoutAnchor = titleLabel.text == nil ? topAnchor : titleLabel.bottomAnchor
        let contentTopOffset : CGFloat = titleLabel.text == nil ? 0 : 10
        
        NSLayoutConstraint.activate([
            
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: contentTopAnchor, constant: contentTopOffset),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
    }
}
