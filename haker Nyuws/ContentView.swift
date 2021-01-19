//
//  ContentView.swift
//  haker Nyuws
//
//  Created by michael tamsil on 19/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts){post in
                
                Text(post.title)
            }
            .navigationBarTitle("Haker Nyuws")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "Hello"),
    Post(id: "2", title: "Bonjour"),
    Post(id: "3", title: "Hola")
]
