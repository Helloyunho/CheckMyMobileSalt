//
//  AboutView.swift
//  CheckMyMobileSalt
//
//  Created by Helloyunho on 2021/11/15.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("CheckMyMobileSalt")
                .font(.largeTitle)
            Text("by Helloyunho")
            Spacer()
            Text("Thanks to:")
                .font(.footnote)
            HStack {
                Link("@PoomSmart", destination: URL(string: "https://github.com/PoomSmart")!)
                    .font(.footnote)
                Text("for")
                    .font(.footnote)
                Link("(PoomSmart/MGKeys/mapping.h)", destination: URL(string: "https://github.com/PoomSmart/MGKeys/blob/master/mapping.h")!)
                    .font(.footnote)
            }
        }
        .padding([.top, .bottom])
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
