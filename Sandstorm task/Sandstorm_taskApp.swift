//
//  Sandstorm_taskApp.swift
//  Sandstorm task
//
//  Created by Ihor Dolhalov on 10.02.2024.
//

import SwiftUI


@main
struct Sandstorm_taskApp: App {

    
    var body: some Scene {
        WindowGroup {
            let imageName = "panda"
            let imageModel = ImageModel(imageName: imageName)
            let viewModel = ImageViewModel(image: imageModel)
            MainView(viewModel: viewModel)
        }
    }
}
