//
//  PageViewC.swift
//  SwiftUI Navigation Example
//
//  Created by Paulo Antonelli on 21/12/22.
//

import SwiftUI

struct PageViewC: View {
    @State var previousPageName: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Text("Coming from \(self.previousPageName) page to")
                Text("PageViewC")
            }
        }
        .navigationTitle("Page View C")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct PageViewC_Previews: PreviewProvider {
    static var previews: some View {
        PageViewC(previousPageName: "Init")
    }
}
