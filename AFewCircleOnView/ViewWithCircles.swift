//
//  ViewWithCircles.swift
//  AFewCircleOnView
//
//  Created by AlexanderYakovenko on 7/8/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

class ViewWithCircles: UIView {

    @IBOutlet weak var button11: ColorButton!

    @IBAction func exitButton(_ sender: Any) {
        
        self.removeFromSuperview()
        
    }
}
