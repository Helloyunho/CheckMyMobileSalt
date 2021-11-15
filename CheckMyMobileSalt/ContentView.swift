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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
