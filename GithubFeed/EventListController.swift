//
//  EventListController.swift
//  GithubFeed
//
//  Created by Lily on 24/09/2018.
//  Copyright © 2018 Lily Hoskin. All rights reserved.
//

import Foundation

class EventListController {

  let eventService: EventApiServiceProtocol
  var eventListViewModel: EventListViewModel = EventListViewModel(date: nil, events: [])

  init(eventService: EventApiServiceProtocol) {
    self.eventService = eventService
  }

  func start() {
    eventService.getEvents(complete: ({ (_, events) in
      let eventList = events.map({event in return EventViewModel(event: event)})
      self.eventListViewModel.events =  eventList
      self.eventService = date
    }))
  }
}
