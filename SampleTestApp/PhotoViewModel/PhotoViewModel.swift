//
//  PhotoViewModel.swift
//  SampleTestApp
//
//  Created by Manoj Singh on 20/8/21.
//

import Foundation

class PhotoViewModel : NSObject {
    private let apiService = APIService()
    var photos: [Photo] = []
    var didReceivePhotos : (() -> ()) = {}

    override init() {
        super.init()
        fetchPhotos()
    }

    func fetchPhotos() {
        apiService.apiToGetEmployeeData {[weak self] photos in
            guard let sself = self else { return }
            sself.photos = photos
            sself.didReceivePhotos()
        }
    }
}
