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
    
    //Label outlets
    @IBOutlet weak var averageWaterDrunk: UILabel!
    @IBOutlet weak var maxLabel: UILabel!
    
    
    /*
    @IBAction func counterViewTap(gesture:UITapGestureRecognizer?) {
        
        if (isGraphViewShowing) {
            
            //hide Graph
            UIView.transition(from: graphView,
                              to: counterView,
                duration: 1.0,
                options: [.transitionFlipFromLeft, .showHideTransitionViews],
                completion:nil)
        }
        
        else {
            
            setupGraphDisplay()
            
            //show Graph
            UIView.transition(from: counterView,
                              to: graphView,
                duration: 1.0,
                options: [.transitionFlipFromRight, .showHideTransitionViews],
                completion: nil)
        }
        
        isGraphViewShowing = !isGraphViewShowing
        
    }
 */
    

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
        print("here")
        if button.isAddButton {
            counterView.counter += 1
        } else {
            if counterView.counter > 0 {
                counterView.counter -= 1
            }
        }
        counterLabel.text = String(counterView.counter)
        
        /*
        if isGraphViewShowing {
            counterViewTap(gesture: nil)
        }
 */
        
    }
    
    /*
    func setupGraphDisplay() {
        
        //Use 7 days for graph - can use any number,
        //but labels and sample data are set up for 7 days
        //let noOfDays:Int = 7
        
        //1 - replace last day with today's actual data
        graphView.graphPoints[graphView.graphPoints.count-1] = counterView.counter
        
        //2 - indicate that the graph needs to be redrawn
        graphView.setNeedsDisplay()
        
        maxLabel.text = "\((graphView.graphPoints).max()!)"
        print((graphView.graphPoints).max()!)
        
        //3 - calculate average from graphPoints
        let average = graphView.graphPoints.reduce(0, +)
            / graphView.graphPoints.count
        averageWaterDrunk.text = "\(average)"
        
        //set up labels
        //day of week labels are set up in storyboard with tags
        //today is last day of the array need to go backwards
        
        //4 - get today's day number
        
        let calendar = Calendar.current
        let components = calendar.dateComponents([.weekday], from: Date())
        
        var weekday = components.weekday
        
        let days = ["S", "S", "M", "T", "W", "T", "F"]
        
        //5 - set up the day name labels with correct day
        for i in (1...days.count).reversed() {
            if let labelView = graphView.viewWithTag(i) as? UILabel {
                if weekday == 7 {
                    weekday = 0
                }
                weekday -= 1
                labelView.text = days[(weekday)!]
                if weekday! < 0 {
                    weekday = days.count - 1
                }
            }
        }
    }
    
    */

}

