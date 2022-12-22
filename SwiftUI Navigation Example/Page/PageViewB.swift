//
//  PageViewB.swift
//  SwiftUI Navigation Example
//
//  Created by Paulo Antonelli on 21/12/22.
//

import SwiftUI

struct PageViewB: View {
    @State var previousPageName: String = ""
    @State private var navigateTo: String?
    
    var body: some View {
        VStack {
            HStack {
                Text("Coming from \(self.previousPageName) page to")
                Text("PageViewB")
            }
            NavigationLink(destination: PageViewC(previousPageName: "PageViewB"), tag: "PageViewC", selection: self.$navigateTo) {
                EmptyView()
            }
            Button("Navigate to Page C", action: {
                self.navigateTo = "PageViewC"
            })
            .foregroundColor(.blue)
        }
        .navigationTitle("Page View B")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PageViewB_Previews: PreviewProvider {
    static var previews: some View {
        PageViewB(previousPageName: "Init")
    }
}
