//
//  ContentView.swift
//  IDNNewsSwiftUI
//
//  Created by Thenardo Ardo on 19/02/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var showNavBar: Bool = false
    
    let articleContent =
        """
        Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
        At vero eos et accusam et justo duo dolores et ea rebum.
        Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
        At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
        """
    
    var body: some View {
        VStack(spacing: 0) {
            //NewsNavBar()
            
            ZStack(alignment: .bottom) {
                ZStack(alignment: .top) {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack(alignment: .leading) {
                            NewsImageHeader()
                                .onAppear {
                                    showNavBar = false
                                }
                                .onDisappear {
                                    showNavBar = true
                                }
                            
                            NewsTitle()
                            
                            Text(articleContent)
                                .font(.custom(IDNFont.mainRegular, size: 16))
                                .lineSpacing(10)
                                .padding(.horizontal, 28)
                            
                            Divider()

                            NewsRelatedTags()

                            Divider()

                            NewsEditorTeam()
                            
                            Divider()
                            
                            VStack(spacing: 0) {
                                ForEach(0...9, id: \.self) { news in
                                    NewsMoreItem()
                                }
                            }
                            
                            // buffer view
                            Rectangle()
                                .frame(height: 100)
                                .foregroundColor(Color.white)
                        }
                    }
                    NewsNavBar(showNavBar: showNavBar)
                }
                NewsFooter()
                    
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
