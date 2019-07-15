//
//  CustomButton.swift
//  MVCFundamental
//
//  Created by Anil Kumar on 10/07/19.
//  Copyright © 2019 com. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
   
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpButton()
    }
    
    private func setUpButton() {
        styleButton()
    }
    
    private func styleButton() {
        setUpShadow()
        setTitleColor(.black, for: .normal)
        backgroundColor = .lightGray
        layer.cornerRadius = 25
        layer.borderWidth  = 3.0
        layer.borderColor  = UIColor.gray.cgColor
    }
    
    private func setUpShadow() {
        layer.shadowColor   = UIColor.black.cgColor
        layer.shadowOffset  = CGSize(width: 0.0, height: 5.0)
        layer.shadowRadius  = 8
        layer.shadowOpacity = 0.5
        clipsToBounds       = true
        layer.masksToBounds = false
    }
    
}
