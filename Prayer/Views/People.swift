//
//  People.swift
//  Prayer
//
//  Created by Christopher Davis on 1/20/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI
struct People: View {
    
    @ObservedObject var personStore = PersonStore()
    
    func addPerson() {
        personStore.person.append(PersonData(firstName: "John", lastName: "Doe", dateAdded: "Jan 20"))
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(personStore.person) { person in
                    NavigationLink(destination: Person(person: person)) {
                        Text("\(person.firstName) \(person.lastName)")
                    }
                }
                .onDelete() { index in
                    self.personStore.person.remove(at: index.first!)
                }
                .onMove { (source: IndexSet, destination: Int) in
                    self.personStore.person.move(fromOffsets: source, toOffset: destination)
                }
            }
            .navigationBarTitle("People")
            .navigationBarItems(leading: Button(action: addPerson) {
                Image(systemName: "plus")
            }, trailing: EditButton())
        }
    }
}

struct People_Previews: PreviewProvider {
    static var previews: some View {
        People()
    }
}

struct PersonData: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var dateAdded: String
}

let peopleData = [
    PersonData(firstName: "Chris", lastName: "Davis", dateAdded: "Jan 20"),
    PersonData(firstName: "Meghan", lastName: "Cain-Davis", dateAdded: "Jan 20"),
    PersonData(firstName: "Mark", lastName: "Lorence", dateAdded: "Jan 20")
]
