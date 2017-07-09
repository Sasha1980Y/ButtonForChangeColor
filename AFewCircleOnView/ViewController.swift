//
//  ViewController.swift
//  AFewCircleOnView
//
//  Created by AlexanderYakovenko on 7/7/17.
//  Copyright © 2017 AlexanderYakovenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    
    let viewColors = ViewWithCircles.loadNib()
    var color: UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //self.view.addSubview(viewColors)
        
        
        
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
        

        
        
        
        
       
        
        
    }
    
    /*
     sender.horConstraint = NSLayoutConstraint(item: sender,
     attribute: .left,
     relatedBy: .equal ,
     toItem: superview,
     attribute: .left,
     multiplier: 1.0,
     constant: CGFloat(arc4random_uniform(UInt32(superview.frame.size.width)-UInt32(superview.frame.size.height * 0.1))))
     sender.verConstraint = NSLayoutConstraint(item: sender,
     attribute: .top,
     relatedBy: .equal,
     toItem: superview,
     attribute: .top,
     multiplier: 1.0,
     constant: superview.frame.size.height * 0.1)
     let widConstr = NSLayoutConstraint(item: sender,
     attribute: .width,
     relatedBy: .equal,
     toItem: superview,
     attribute: .width,
     multiplier: 0.2,
     constant: 0.0)
     let heiConstr = NSLayoutConstraint(item: sender,
     attribute: .height,
     relatedBy: .equal,
     toItem: superview,
     attribute: .height,
     multiplier: 0.1,
     constant: 0.0)
     superview.addConstraints([sender.horConstraint!  , sender.verConstraint!, widConstr, heiConstr])
    */


}

