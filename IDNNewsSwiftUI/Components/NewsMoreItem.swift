//
//  NewsMoreItem.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 26/02/22.
//

import SwiftUI

struct NewsMoreItem: View {
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text("22-Februari-2022 | 13:48")
                    .font(.custom(IDNFont.mainRegular, size: 12))
                Text("Contoh Judul Berita yang terdapat di List Berita Lainnya")
                    .font(.custom(IDNFont.mainBlack, size: 18))
                    .lineLimit(3)
                Text("Nasional")
                    .font(.custom(IDNFont.mainRegular, size: 12))
            }
            
            VStack(alignment: .trailing) {
                ZStack(alignment: .bottomTrailing) {
                    Image(getRandomSampleHeaderImageName())
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 88)
                        .clipped()
                    
                    Image("idntimes_logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.vertical, 6)
                        .padding(.horizontal, 12)
                        .background(Color.white)
                        .cornerRadius(12, corners: [.topLeft])
                        .frame(width: 90)
                }
                .cornerRadius(16)
                
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24, height: 24)
                        .foregroundColor(Color.black)
                }
            }
        }
        .padding(.bottom, 8)
        .padding(.horizontal)
        .frame(height: 180)
        .frame(maxWidth: .infinity)
        .background(Color.white)
    }
    
    func getRandomSampleHeaderImageName() -> String {
        if let headerImageName = SampleData.newsHeaders.randomElement() {
            return headerImageName
        } else {
            return "header1"
        }
    }
}

struct NewsMoreItem_Previews: PreviewProvider {
    static var previews: some View {
        NewsMoreItem()
    }
}
