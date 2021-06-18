//
//  BrowseView.swift
//  InteriorDesignAR
//
//  Created by Marc Jacques on 6/18/21.
//

import SwiftUI

struct BrowseView: View {
    @Binding var showBrowse: Bool
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                // Gridview for thumbnails
            }
            .navigationBarTitle(Text("Browse"), displayMode: .large)
            .navigationBarItems(trailing:
                Button(action: {
                    self.showBrowse.toggle()
                }) {
                    Text("Done").bold()
                })
        }
    }
}
