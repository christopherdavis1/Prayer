
//
//  RequestStore.swift
//  Prayer
//
//  Created by Christopher Davis on 1/20/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI
import Combine

class RequestStore: ObservableObject {
    @Published var requests: [PrayerRequests] = prayerRequests
}
