//
//  NewsRelatedTags.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 25/02/22.
//

import SwiftUI

struct NewsRelatedTags: View {
    
    var tags: [String] = [
        "Berita Baru", "Drama", "Dunia",
        "Tempat Wisata", "Travel", "World",
        "Benua", "Negara", "Peraturan",
        "Aturan baru", "Tag baru"
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            
            Text("TAG TERKAIT")
                .font(.custom(IDNFont.mainBold, size: 14))
            
            ForEach(getRows(), id: \.self) { rows in
                HStack(spacing: 8) {
                    ForEach(rows, id: \.self) { row in
                        NewsChip(text: row)
                    }
                }
            }
        }
        .padding(.vertical, 12)
        .offset(x: -28)
        .frame(maxWidth: .infinity)
    }
    
    func getRows() -> [[String]] {
        
        var rows: [[String]] = []
        var currentRow: [String] = []
        
        var totalWidth: CGFloat = 0
        
        let screenWidth: CGFloat = UIScreen.main.bounds.width
        
        tags.forEach { tag in
            let stringSize = (CGFloat(tag.count) + 32) // 16 is buffer value
            
            totalWidth += (stringSize + 40)
            
            if totalWidth > screenWidth {
                // adding row in rows
                // clearing the data
                totalWidth = (!currentRow.isEmpty || rows.isEmpty ? (stringSize + 40) : 0) // checking for long string
                
                rows.append(currentRow)
                currentRow.removeAll()
                currentRow.append(tag)
            } else {
                currentRow.append(tag)
            }
        }
        
        // Kavsoft says "Safe check..."
        // "...if having any value storing it in rows"
        if !currentRow.isEmpty {
            rows.append(currentRow)
            currentRow.removeAll()
        }
        
        return rows
    }
}

struct NewsRelatedTags_Previews: PreviewProvider {
    static var previews: some View {
        NewsRelatedTags()
    }
}
