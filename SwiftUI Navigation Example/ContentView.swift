//
//  ContentView.swift
//  SwiftUI Navigation Example
//
//  Created by Paulo Antonelli on 21/12/22.
//

import SwiftUI

struct ContentView: View {
    @State var statusBarVisible: Bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Button("Change status bar", action: {
                    self.statusBarVisible.toggle()
                })
                Spacer()
                NavigationLink(destination: PageViewA(previousPageName: "ContentView")) {
                    HStack {
                        Text("Go to Page A")
                        Image("navigation-icon")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 100.0, maxHeight: 100.0)
                    }
                }
                Spacer()
            }
            .navigationTitle("Navigation Example App")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                leading: Button("leading", action: {}),
                trailing: Button("trailing", action: {})
            )
            .navigationBarHidden(self.statusBarVisible)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
