//
//  PostData.swift
//  haker Nyuws
//
//  Created by michael tamsil on 19/01/21.
//

import Foundation
import SwiftUI

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}
