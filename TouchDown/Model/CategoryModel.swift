//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Cristian Espes on 23/01/2021.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
