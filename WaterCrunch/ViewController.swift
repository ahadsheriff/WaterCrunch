//
//  ViewController.swift
//  WaterCrunch
//
//  Created by Ahad Sheriff on 2/18/16.
//  Copyright © 2016 Ahad Sheriff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isGraphViewShowing = false
    
    //Counter outlets
    
    @IBOutlet weak var counterView: CounterView!
    @IBOutlet weak var counterLabel: UILabel!
    
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var graphView: GraphView!
    
    @IBAction func counterViewTap(gesture:UITapGestureRecognizer?) {
        
        if (isGraphViewShowing) {
            
            //hide Graph
            UIView.transitionFromView(graphView,
                toView: counterView,
                duration: 1.0,
                options: [.TransitionFlipFromLeft, .ShowHideTransitionViews],
                completion:nil)
        }
        
        else {
            
            //show Graph
            UIView.transitionFromView(counterView,
                toView: graphView,
                duration: 1.0,
                options: [.TransitionFlipFromRight, .ShowHideTransitionViews],
                completion: nil)
        }
        
        isGraphViewShowing = !isGraphViewShowing
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        counterLabel.text = String(counterView.counter)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnPushButton(button: PushButtonView) {
        if button.isAddButton {
            counterView.counter++
        } else {
            if counterView.counter > 0 {
                counterView.counter--
            }
        }
        counterLabel.text = String(counterView.counter)
        
        if isGraphViewShowing {
            counterViewTap(nil)
        }
        
    }

}

