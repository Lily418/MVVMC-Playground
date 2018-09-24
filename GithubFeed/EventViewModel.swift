//
//  EventViewModel.swift
//  GithubFeed
//
//  Created by Lily on 24/09/2018.
//  Copyright © 2018 Lily Hoskin. All rights reserved.
//

import Foundation

struct EventViewModel {
  let userDisplayName: String
  let type: String
  let repo: String

  init(event: Event) {
    self.userDisplayName = event.userDisplayName
    self.type = event.type
    self.repo = event.repo
  }
}
