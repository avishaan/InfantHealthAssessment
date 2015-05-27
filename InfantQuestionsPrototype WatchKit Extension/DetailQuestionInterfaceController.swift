//
//  DetailQuestionInterfaceController.swift
//  InfantQuestionsPrototype
//
//  Created by Brown Magic on 5/26/15.
//  Copyright (c) 2015 codeHatcher. All rights reserved.
//

import WatchKit
import Foundation


class DetailQuestionInterfaceController: WKInterfaceController {
  
  var questionContext:Int?
  
  @IBOutlet weak var detailQuestionLabel: WKInterfaceLabel!
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    // Configure interface objects here.
    println("Context: \(context)")
    questionContext = context as? Int
    
    detailQuestionLabel.setText(questions[questionContext!])
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
  @IBAction func onYesButtonPress() {
    answers[questionContext!] = "yes"
  }
  @IBAction func onNoButtonPressed() {
    answers[questionContext!] = "no"
  }
  @IBAction func onMaybeButtonPress() {
    
  }
  
}
