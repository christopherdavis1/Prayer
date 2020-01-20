//
//  SingleRequest.swift
//  Prayer
//
//  Created by Christopher Davis on 1/20/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI

struct SingleRequest: View {
    
    var request: PrayerRequests = prayerRequests[0]
    
    var body: some View {
        VStack {
            Text(request.person)
                .font(.title)
            Text(request.title)
                .font(.headline)
        }
        .navigationBarTitle(request.person)
    }
}

struct SingleRequest_Previews: PreviewProvider {
    static var previews: some View {
        SingleRequest()
    }
}
