//
//  ContentView.swift
//  haker Nyuws
//
//  Created by michael tamsil on 19/01/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts){post in
                HStack {
                    Text(String(post.points))
                    Text(post.title)
                }
            }
            .navigationBarTitle("Haker Nyuws")
        }
        .onAppear(){
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
