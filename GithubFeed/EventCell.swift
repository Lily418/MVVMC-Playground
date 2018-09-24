//
//  EventCell.swift
//  GithubFeed
//
//  Created by Lily on 24/09/2018.
//  Copyright © 2018 Lily Hoskin. All rights reserved.
//

import Foundation
import UIKit

class EventCell: UITableViewCell {

  @IBOutlet weak var user: UILabel!
  @IBOutlet weak var type: UILabel!
  @IBOutlet weak var repo: UILabel!

  func setup(event: EventViewModel) {
    user.text = event.userDisplayName
    type.text = event.type
    repo.text = event.repo
  }
}
