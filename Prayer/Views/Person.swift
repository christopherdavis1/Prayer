//
//  Person.swift
//  Prayer
//
//  Created by Christopher Davis on 1/20/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI

struct Person: View {
    
    var person: PersonData = peopleData[0]
    
    var body: some View {
        VStack {
            Text("\(person.firstName) \(person.lastName)")
                .font(.title)
            Text(person.dateAdded)
                .font(.headline)
        }
        .navigationBarTitle(Text("\(person.firstName) \(person.lastName)"))
    }
}

struct Person_Previews: PreviewProvider {
    static var previews: some View {
        Person()
    }
}
