//
//  ViewController.swift
//  GithubFeed
//
//  Created by Lily on 24/09/2018.
//  Copyright © 2018 Lily Hoskin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {



  @IBOutlet weak var tableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 5
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let eventCell = tableView.dequeueReusableCell(withIdentifier: "Event") as! EventCell
    eventCell.setup(event: EventViewModel(event: Event(userDisplayName: "Woof", type: "Heck", repo: "Doggo")))
    return eventCell
  }


}

