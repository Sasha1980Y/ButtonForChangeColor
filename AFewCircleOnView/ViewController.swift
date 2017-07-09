//
//  ViewController.swift
//  AFewCircleOnView
//
//  Created by AlexanderYakovenko on 7/7/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {
    
    
    @IBOutlet weak var firstGoToButton: UIButton!
    let viewColors = ViewWithCircles.loadNib()
    var color: UIColor = UIColor.blue

    
    
    var del: ViewWithCircles!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         viewColors.delegate = self
        for item in viewColors.buttons {
            item?.titleLabel?.textColor = item?.backgroundColor
        }
        
        
    }
    
    
    
    
    
    @IBAction func tapColorButton(_ sender: Any) {
        
        print("ok")
        
        //self.view.addSubview(viewColors)

        viewColors.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(viewColors)
        
        viewColors.frame = (viewColors.superview?.bounds)!
        
        let horConstr = NSLayoutConstraint(item: viewColors,
                                           attribute: .left,
                                           relatedBy: .equal,
                                           toItem: self.view,
                                           attribute: .left,
                                           multiplier: 1.0,
                                           constant: 0.0)
        let verConstr = NSLayoutConstraint(item: viewColors,
                                           attribute: .top,
                                           relatedBy: .equal,
                                           toItem: self.view,
                                           attribute: .top,
                                           multiplier: 1.0,
                                           constant: 0.0)
        let widthConstr = NSLayoutConstraint(item: viewColors,
                                             attribute: .width,
                                             relatedBy: .equal,
                                             toItem: self.view,
                                             attribute: .width,
                                             multiplier: 1.0,
                                             constant: 0.0)
        let heigthConstr = NSLayoutConstraint(item: viewColors,
                                              attribute: .height,
                                              relatedBy: .equal,
                                              toItem: self.view,
                                              attribute: .height,
                                              multiplier: 1.0,
                                              constant: 0.0)
        self.view.addConstraints([horConstr, verConstr, widthConstr, heigthConstr])
        

        
        
        viewColors.delegate = self
        
       
        
        
    }
    
    func sendData(color: UIColor) {
        
        self.firstGoToButton.backgroundColor = color
        print("Contr with 1 button")
    }
    
}

