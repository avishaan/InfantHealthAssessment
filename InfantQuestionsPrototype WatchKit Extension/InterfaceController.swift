//
//  InterfaceController.swift
//  InfantQuestionsPrototype WatchKit Extension
//
//  Created by Brown Magic on 5/26/15.
//  Copyright (c) 2015 codeHatcher. All rights reserved.
//

import WatchKit
import Foundation

var answers: [String] = ["blank", "blank"]


class InterfaceController: WKInterfaceController {
  
  @IBOutlet weak var question1Button: WKInterfaceButton!
  @IBOutlet weak var question2Button: WKInterfaceButton!
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    // Configure interface objects here.
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
    println("Answers: \(answers[0])")
    
    // handle button 1
    if answers[0] == "yes" {
      question1Button.setBackgroundColor(UIColor.yellowColor())
      question1Button.setAlpha(0.5)
    } else if answers[0] == "no" {
      question1Button.setBackgroundColor(UIColor.greenColor())
      question1Button.setAlpha(0.5)
    }
    // handle button 2
    if answers[1] == "yes" {
      question2Button.setBackgroundColor(UIColor.yellowColor())
      question1Button.setAlpha(0.5)
    } else if answers[1] == "no" {
      question2Button.setBackgroundColor(UIColor.greenColor())
      question1Button.setAlpha(0.5)
    }
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
  @IBAction func questionButtonTapped() {
    presentControllerWithName("detailQuestion", context: 0)
  }
  @IBAction func onCoughButtonPress() {
    presentControllerWithName("detailQuestion", context: 1)
  }
}
