//
//  Extension.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 22/02/22.
//

import SwiftUI

extension View {
    
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
    
}

