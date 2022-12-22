//
//  PageViewA.swift
//  SwiftUI Navigation Example
//
//  Created by Paulo Antonelli on 21/12/22.
//

import SwiftUI

struct PageViewA: View {
    @State var previousPageName: String = ""
    @State private var navigateToPageB: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Coming from \(self.previousPageName) page to")
                Text("PageViewA")
            }
            NavigationLink(destination: PageViewB(previousPageName: "PageViewA"), isActive: self.$navigateToPageB) {
                Button("Navigate to Page B", action: {
                    self.navigateToPageB = true
                })
                .foregroundColor(.blue)
            }
        }
        .navigationTitle("Page View A")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PageViewA_Previews: PreviewProvider {
    static var previews: some View {
        PageViewA(previousPageName: "Init")
    }
}
