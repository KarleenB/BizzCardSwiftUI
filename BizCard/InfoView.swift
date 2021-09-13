//
//  InfoView.swift
//  BizCard
//
//  Created by Branden Karleen on 9/28/20.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    let iconColor: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(iconColor)
                Text(text)
                    .foregroundColor(.black)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: "phone.fill", iconColor: .red)
            .previewLayout(.sizeThatFits)
    }
}
