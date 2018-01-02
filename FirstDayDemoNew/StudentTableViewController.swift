//
//  StudentTableViewController.swift
//  FirstDayDemoNew
//
//  Created by David Fisher on 1/2/18.
//  Copyright © 2018 David Fisher. All rights reserved.
//

import UIKit

class StudentTableViewController: UITableViewController {
  let students = ["Nick", "Trevor", "Joseph", "Ruying", "Zhiyang", "Chris", "Jonathan", "Matt", "Tayler", "Jonathan", "Matt", "Jonathan", "Haolin", "Anthony", "Tianjiao", "Chris", "Bo", "Ashok", "Philip", "Grant", "Ishank", "Stephen", "Benedict", "Xiangqing"]

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return students.count
  }

  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "studentCell", for: indexPath)

    cell.textLabel?.text = students[indexPath.row]

    return cell
  }

  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let ac = UIAlertController(title: "You clicked on...  \(students[indexPath.row])", message: nil, preferredStyle: UIAlertControllerStyle.alert)
    ac.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
    present(ac, animated: true, completion: nil)
  }
}
