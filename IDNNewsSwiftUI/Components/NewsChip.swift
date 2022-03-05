//
//  NewsChip.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 22/02/22.
//

import SwiftUI

struct NewsChip: View {
    
    var text: String = "Default"
    
    var body: some View {
        Text(text)
            .font(.custom(IDNFont.mainRegular, size: 12))
            .foregroundColor(Color.white)
            .padding(8)
            .background(Color.pink)
            .cornerRadius(8)
    }
}

struct NewsChip_Previews: PreviewProvider {
    static var previews: some View {
        NewsChip()
    }
}
