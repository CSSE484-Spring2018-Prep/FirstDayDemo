//
//  TouchesAndViewsViewController.swift
//  FirstDayDemoNew
//
//  Created by David Fisher on 1/2/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit

class TouchesAndViewsViewController: UIViewController {

  @IBOutlet weak var logoImageView: UIImageView!

  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    if let touch = touches.first {
      let position = touch.location(in: view)
      print(position)
      UIView.beginAnimations(nil, context: nil)
      logoImageView.center = position
      UIView.commitAnimations()
    }
  }
}
