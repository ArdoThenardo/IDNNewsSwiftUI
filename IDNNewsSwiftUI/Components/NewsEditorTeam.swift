//
//  NewsEditorTeam.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 25/02/22.
//

import SwiftUI

struct NewsEditorTeam: View {
    
    var body: some View {
        
        let numOfEditor: Int = 2
        
        VStack(alignment: .leading) {
            Text("TIM EDITORIAL")
                .font(.custom(IDNFont.mainBold, size: 14))
            
            HStack() {
                ForEach(0..<numOfEditor, id: \.self) { element in
                    Image("people\(element + 1)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 40, height: 40)
                        .cornerRadius(20)
                        .offset(x: element > 0 ? CGFloat(-25 * element) : 0)
                }
                Text("John Doe dan Smith")
                    .font(.custom(IDNFont.mainRegular, size: 12))
                    .offset(x: CGFloat(-25 * (numOfEditor - 1)))
                Spacer()
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 28)
        .frame(maxWidth: .infinity)
        
    }
}

struct NewsEditorTeam_Previews: PreviewProvider {
    static var previews: some View {
        NewsEditorTeam()
    }
}
