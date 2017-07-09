//
//  ColorButton.swift
//  AFewCircleOnView
//
//  Created by AlexanderYakovenko on 7/8/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit


class ColorButton: UIButton {

    
    var isPressed = false
    
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setup()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setup()
    }
    
    
    func setup() {
        
        
        self.layer.cornerRadius = self.frame.size.height / 2
        self.clipsToBounds = true
        //self.backgroundColor = UIColor.red
        self.addTarget(superview, action: #selector(tapPressed), for: .touchUpInside)
        self.setTitle(" ", for: .normal)
        //self.setTitle("\u{2713}", for: .normal)
        //self.titleLabel?.textColor = UIColor.white
        
        self.titleLabel?.textColor = self.backgroundColor
        //self.titleLabel?.font = UIFont(name: (self.titleLabel?.font.fontName)!, size: 20)
        
    }
    
    
    func tapPressed() {
        if isPressed {
            isPressed = false
            self.setTitle(" ", for: .normal)
        } else {
            isPressed = true
            self.setTitle("\u{2713}", for: .normal)
        }
        print("Pressed")
    }
    
    
    
    

}
