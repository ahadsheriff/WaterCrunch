//
//  PushButtonView.swift
//  WaterCrunch
//
//  Created by Ahad Sheriff on 2/18/16.
//  Copyright © 2016 Ahad Sheriff. All rights reserved.
//

import UIKit

@IBDesignable

class PushButtonView: UIButton {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    override func drawRect(rect: CGRect) {
        let path = UIBezierPath(ovalInRect: rect)
        UIColor.greenColor().setFill()
        path.fill()
        
    }

}
