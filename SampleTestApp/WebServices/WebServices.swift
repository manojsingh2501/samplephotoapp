//
//  WebServices.swift
//  SampleTestApp
//
//  Created by Manoj Singh on 20/8/21.
//

import Foundation

class APIService :  NSObject {
    private let sourcesURL = URL(string: "https://picsum.photos/v2/list")!

    func apiToGetEmployeeData(completion : @escaping ([Photo]) -> ()){
        URLSession.shared.dataTask(with: sourcesURL) { (data, urlResponse, error) in
            if let data = data {
                do {
                    let photos = try JSONDecoder().decode([Photo].self, from: data)
                    completion(photos)
                } catch {
                    print("Photo Fetching Error: \(error)")
                    completion([])
                }
            }
        }.resume()
    }
}
