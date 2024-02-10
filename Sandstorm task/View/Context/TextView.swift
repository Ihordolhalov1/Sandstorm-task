//
//  TextView.swift
//  Sandstorm task
//
//  Created by Ihor Dolhalov on 10.02.2024.
//

import SwiftUI

struct TextView: View {
    let text: String
    var body: some View {
            Text(text)
                .frame(height: 56)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(18)
                .overlay {
                    RoundedRectangle(cornerRadius: 18)
                        .stroke(.indigo, lineWidth: 3)
                }

        
    
    }
}

#Preview {
    TextView(text: "Lock")
}
