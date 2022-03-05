//
//  NewsNavBar.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 19/02/22.
//

import SwiftUI

struct NewsNavBar: View {
    
    var showNavBar: Bool = true
    
    var body: some View {
        VStack(spacing: 0) {
            Rectangle()
                .frame(height: 30)
                .foregroundColor(showNavBar ? Color.white : Color.clear)
                .opacity(showNavBar ? 1 : 0)
            
            HStack {
                Image(systemName: "chevron.left")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .padding(.vertical, 24)
                    .opacity(showNavBar ? 1 : 0)
                Spacer()
                Image("idntimes_logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 130)
                    .opacity(showNavBar ? 1 : 0)
                Spacer()
            }
            .frame(height: 70)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 24)
            .background(showNavBar ? Color.white : Color.clear)
            
            Rectangle()
                .frame(height: 0.5)
                .foregroundColor(Color.black.opacity(0.7))
                .opacity(showNavBar ? 1 : 0)
        }
    }
}

struct NewsHeader_Previews: PreviewProvider {
    static var previews: some View {
        NewsNavBar()
    }
}
