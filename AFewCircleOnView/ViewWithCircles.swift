//
//  ViewWithCircles.swift
//  AFewCircleOnView
//
//  Created by AlexanderYakovenko on 7/8/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

protocol SendDataDelegate {
    func sendData()
}

class ViewWithCircles: UIView {

    @IBOutlet weak var button11: ColorButton!
    
    
    
    @IBAction func buttonTap(_ sender: Any) {
        
      
        
    }
    
    
    
    
    
    

    @IBAction func exitButton(_ sender: Any) {
        
        self.removeFromSuperview()
        
    }
}
