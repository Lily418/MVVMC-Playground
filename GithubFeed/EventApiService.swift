//
//  EventApiService.swift
//  GithubFeed
//
//  Created by Lily on 24/09/2018.
//  Copyright © 2018 Lily Hoskin. All rights reserved.
//

import Foundation
import Alamofire

protocol EventApiServiceProtocol {
  func getEvents(complete: @escaping (_ error: Error?, _ events: [Event]) -> ())
}




class EventApiService: EventApiServiceProtocol {

  func getEvents(complete: @escaping (Error?, [Event]) -> ()) {
    Alamofire.request("https://api.github.com/events").responseJSON { response in
      if let json = response.result.value {
        print(json)
        complete(nil, [])
      }
    }
  }
}
