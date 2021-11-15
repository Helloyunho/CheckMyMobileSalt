//
//  ContentView.swift
//  CheckMyMobileSalt
//
//  Created by Helloyunho on 2021/11/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MobileSaltView()
                .tabItem {
                    Label("List", systemImage: "list.dash")
                }
                .tag(1)
            AboutView()
                .tabItem {
                    Label("About", systemImage: "info.circle")
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
