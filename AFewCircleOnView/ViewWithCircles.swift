//
//  ViewWithCircles.swift
//  AFewCircleOnView
//
//  Created by AlexanderYakovenko on 7/8/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func sendData(color: UIColor)
}

class ViewWithCircles: UIView {

    @IBOutlet weak var button11: ColorButton!
    @IBOutlet weak var button12: ColorButton!
    
    var buttons: [ColorButton?] {
        return [button11, button12]
    }
    
    
    
    
    var delegate: SendDataDelegate? 
    
    
    @IBAction func button11Tap(_ sender: ColorButton) {
                
        delegate?.sendData(color: sender.backgroundColor!)
        
        if sender.titleLabel?.textColor == UIColor.white {
            sender.titleLabel?.textColor = sender.backgroundColor
            
            
        } else {
            sender.titleLabel?.textColor = UIColor.white
        }
        
        
    }
    
    
    @IBAction func exitButton(_ sender: Any) {
        
        self.removeFromSuperview()
        
    }
    
    
    
}
