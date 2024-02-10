//
//  ImageViewModel.swift
//  Sandstorm task
//
//  Created by Ihor Dolhalov on 10.02.2024.
//

import Foundation

class ImageViewModel: ObservableObject {
    @Published var image: ImageModel
    
    init(image: ImageModel) {
        self.image = image
    }
}
