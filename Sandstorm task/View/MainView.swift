//
//  MainView.swift
//  Sandstorm task
//
//  Created by Ihor Dolhalov on 10.02.2024.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var viewModel: ImageViewModel
    @State var isLocked = false
    @State var openFullIsPressed = false
    
    var body: some View {
        
       NavigationView {
           GeometryReader { geometry in
               VStack {
                   Image(viewModel.image.imageName)
                       .resizable()
                       .aspectRatio(contentMode: .fill)
                       .frame(width: 150, height: geometry.size.height * 0.3, alignment: .leading)
                       .clipped()
                   
                   HStack (spacing: 20){
                       Button {
                           isLocked.toggle()
                       } label: {
                           TextView(text: !isLocked ? "Lock" : "Unlock")
                       }
                       
                       Button {
                           
                       } label: { TextView(text: "Open from top")
                           .opacity(!isLocked ? 1 : 0.5)}
                       
                       
                   } .padding(20)
                   Spacer()
                   
                   
                   NavigationLink(
                    destination: DetailedView(viewModel: viewModel))
                   {
                       TextView(text: "Open full")
                   }
                 
                   .padding()
               } .background(.gray)
           }
        }
    }
}

#Preview {
    MainView(viewModel: ImageViewModel(image: ImageModel(imageName: "panda")))
}
