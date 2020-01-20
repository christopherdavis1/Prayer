//
//  Requests.swift
//  Prayer
//
//  Created by Christopher Davis on 1/20/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI

struct Requests: View {
    
    @ObservedObject var store = RequestStore()
    
    func addRequest() {
        store.requests.append(PrayerRequests(person: "New Person", title: "New prayer", body: "New prayer text", dateAdded: "New date"))
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(store.requests) { request in
                    NavigationLink(destination: SingleRequest(request: request)) {
                        VStack(alignment: .leading, spacing: 8.0) {
                            Text(request.person)
                            Text(request.title.uppercased())
                                .font(.caption)
                            
                        }
                    }
                }
                .onDelete() { index in
                    self.store.requests.remove(at: index.first!)
                }
                .onMove { (source: IndexSet, destination: Int) in
                    self.store.requests.move(fromOffsets: source, toOffset: destination)
                }
            }
            .navigationBarTitle(Text("Requests"))
            .navigationBarItems(leading: Button(action: addRequest) {
                Image(systemName: "plus")
            }, trailing: EditButton())
        }
    }
}

struct Requests_Previews: PreviewProvider {
    static var previews: some View {
        Requests()
    }
}

struct PrayerRequests: Identifiable {
    var id = UUID()
    var person: String
    var title: String
    var body: String
    var dateAdded: String
}

let prayerRequests = [
    PrayerRequests(person: "Meghan Cain-Davis", title: "Pregnancy", body: "Help her have a good one.", dateAdded: "Jan 20"),
    PrayerRequests(person: "Jon Davis", title: "Happiness", body: "Prayer content", dateAdded: "Jan 20"),
    PrayerRequests(person: "Cora", title: "To stop dating stephan", body: "Prayer text here.", dateAdded: "Jan 20")
]
