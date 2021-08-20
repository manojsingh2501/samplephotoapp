//
//  Photo.swift
//  SampleTestApp
//
//  Created by Manoj Singh on 20/8/21.
//

import Foundation

struct Photo: Decodable {
    let id: String
    let author: String
    let width: Float
    let height: Float
    let url: URL
}
