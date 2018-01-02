//
//  ButtonsAndLabelsViewController.swift
//  FirstDayDemoNew
//
//  Created by David Fisher on 1/2/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit

class ButtonsAndLabelsViewController: UIViewController {

  var counter = 0;
  @IBOutlet weak var countLabel: UILabel!

  @IBAction func pressedIncrement(_ sender: Any) {
    counter += 1
    updateView()
  }

  @IBAction func pressedDecrement(_ sender: Any) {
    counter -= 1
    updateView()
  }

  func updateView() {
    countLabel.text = "Count = \(counter)"
  }
}
