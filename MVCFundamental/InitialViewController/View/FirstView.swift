//
//  FirstView.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 11/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

final class FirstView: UIView {
    
    
    var EmptyClosure: (() -> Void)?
    
    lazy var GoToNextButton: UIButton = { [unowned self] in
        let button = CustomButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(_didTabNext), for: .touchUpInside)
        return button
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setUp()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }
    
    private func setUp() {
        addSubview(GoToNextButton)
        
        backgroundColor = .white
        
        GoToNextButton.setTitle("GoToNext", for: .normal)
        
        settingUpConstraints()
    }
    
    private func settingUpConstraints() {
        
        let screenSize  = UIScreen.main.bounds
        let screenWidth = screenSize.width
        
        NSLayoutConstraint.activate([
            GoToNextButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            GoToNextButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            GoToNextButton.widthAnchor.constraint(equalToConstant: screenWidth/2),
            GoToNextButton.heightAnchor.constraint(equalToConstant: 50)
            
            ])
    }
    
    @objc
    private func _didTabNext() {
        EmptyClosure?()
    }
}
