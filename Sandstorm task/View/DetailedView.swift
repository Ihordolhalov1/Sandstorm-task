//
//  DetailedView.swift
//  Sandstorm task
//
//  Created by Ihor Dolhalov on 10.02.2024.
//

import SwiftUI

struct DetailedView: View {
    @Environment(\.dismiss) var dismiss

    @ObservedObject var viewModel: ImageViewModel
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Image(viewModel.image.imageName)
                    .resizable()
 //                  .frame(width: .infinity, height: .infinity, alignment: .leading)
                    .aspectRatio(contentMode: .fill)
                    .ignoresSafeArea()
            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
        dismiss()
        })
                {
                    ZStack {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 36, height: 36)

                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                            .frame(width: 32, height: 32)
                    } .padding(20)
    
                    
                }
        }
        }
    }
}

#Preview {
    DetailedView(viewModel: ImageViewModel(image: ImageModel(imageName: "panda")))
}
