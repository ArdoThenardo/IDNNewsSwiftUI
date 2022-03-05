//
//  NewsFooter.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 19/02/22.
//

import SwiftUI

struct NewsFooter: View {
    var body: some View {
        
        let footerFont = Font.custom(IDNFont.mainRegular, size: 14)
        
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 0.5)
                .background(Color.black.opacity(0.7))
            
            HStack {
                VStack {
                    Image(systemName: "house.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Home")
                        .font(footerFont)
                }
                .frame(width: UIScreen.main.bounds.size.width / 3 - 24)
                .background(Color.white)
                .padding(.vertical, 18)
                .padding(.leading, 24)
            
                VStack {
                    Image(systemName: "square.and.arrow.up.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Share")
                        .font(footerFont)
                }
                .frame(width: UIScreen.main.bounds.size.width / 3)
                .background(Color.white)
                .padding(.vertical, 18)
            
                VStack {
                    Image(systemName: "phone.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("WhatsApp")
                        .font(footerFont)
                }
                .frame(width: UIScreen.main.bounds.size.width / 3 - 24)
                .background(Color.white)
                .padding(.vertical, 18)
                .padding(.trailing, 24)
            }
            .frame(height: 80)
            .frame(maxWidth: .infinity)
            .background(Color.white)
        }
    }
}

struct NewsFooter_Previews: PreviewProvider {
    static var previews: some View {
        NewsFooter()
    }
}
