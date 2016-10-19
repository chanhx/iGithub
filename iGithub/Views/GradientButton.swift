//
//  GradientButton.swift
//  iGithub
//
//  Created by Chan Hocheung on 10/17/16.
//  Copyright © 2016 Hocheung. All rights reserved.
//

import UIKit

class GradientButton: UIButton {
    
    let gradientLayer = CAGradientLayer()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        commontInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        commontInit()
    }
    
    func commontInit() {
        setTitleColor(UIColor(netHex: 0x333333), for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: UIFontWeightMedium)
        contentEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
    }

    override func draw(_ rect: CGRect) {
        
        layer.cornerRadius = 3
        layer.borderColor = UIColor(netHex: 0xd5d5d5).cgColor        // UIColor(white: 0.4, alpha: 0.2).cgColor
        layer.masksToBounds = true
        layer.borderWidth = 1
        
        gradientLayer.frame = rect
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        gradientLayer.colors = [UIColor(netHex: 0xfcfcfc).cgColor, UIColor(netHex: 0xeeeeee).cgColor]
        
        layer.insertSublayer(gradientLayer, at: 0)
    }

}
