//
//  NewsImageHeader.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 22/02/22.
//

import SwiftUI

struct NewsImageHeader: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                if geometry.frame(in: .global).minY <= 0 {
                    Image("header4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .clipped()
                } else {
                    Image("header4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                        .clipped()
                        .offset(y: -geometry.frame(in: .global).minY)
                }
                
                VStack(alignment: .leading) {
                    Button {
                        print("responded")
                    } label: {
                        Image(systemName: "chevron.left")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22, height: 22)
                            .foregroundColor(Color.white)
                            .padding(.horizontal, 12)
                    }
                    .offset(y: geometry.frame(in: .global).minY <= 0 ? 55 : -geometry.frame(in: .global).minY + 55) // back button stay at top when scrolling up
                    
                    Spacer()
                    
                    Rectangle()
                        .frame(
                            width: UIScreen.main.bounds.size.width,
                            height: geometry.frame(in: .global).minY <= 0 ? 24 : 24 + geometry.frame(in: .global).minY
                        )
                        .cornerRadius(14, corners: [.topLeft, .topRight])
                        .foregroundColor(Color.white)
                }
            }
        }
        .frame(height: 350)
    }
}

struct NewsImageHeader_Previews: PreviewProvider {
    static var previews: some View {
        NewsImageHeader()
    }
}
