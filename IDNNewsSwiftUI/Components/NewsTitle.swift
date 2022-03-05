//
//  NewsTitle.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 22/02/22.
//

import SwiftUI

struct NewsTitle: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            
            // Publisher Logo
            HStack {
                Image("idntimes_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130)
                    .padding(.bottom, 18)
            }
            .frame(maxWidth: .infinity)
            
            // Category & Publish Date
            HStack {
                NewsChip()
                Spacer()
                Text("22-Februari-2022 | 11.45")
                    .font(.custom(IDNFont.mainRegular, size: 12))
            }
            
            // Title
            Text("Contoh Judul Artikel yang akan dibaca oleh User Smartphone")
                .font(.custom(IDNFont.mainBlack, size: 18))
            
            // Sub Title
            Text("Excerpt artikel secara garis besar")
                .font(.custom(IDNFont.mainRegular, size: 14))
            
            // Author
            HStack {
                Image("people1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                    .cornerRadius(20)
                Text("John Doe")
                    .font(.custom(IDNFont.mainBlack, size: 14))
                    .padding(.horizontal, 2)
            }
        }
        .padding(.horizontal, 28)
        .padding(.bottom, 8)
    }
}

struct NewsTitle_Previews: PreviewProvider {
    static var previews: some View {
        NewsTitle()
    }
}
