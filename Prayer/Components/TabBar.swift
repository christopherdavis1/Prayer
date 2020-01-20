//
//  TabBar.swift
//  Prayer
//
//  Created by Christopher Davis on 1/20/20.
//  Copyright © 2020 Christopher Davis. All rights reserved.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Requests().tabItem({
                Image(systemName: "shield.fill")
                Text("Requests")
            })
            
            People().tabItem({
                Image(systemName: "person.2.square.stack")
                Text("People")
            })
            
            Today().tabItem({
                Image(systemName: "heart.circle.fill")
                Text("Today")
            })
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
