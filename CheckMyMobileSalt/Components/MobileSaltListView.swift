//
//  MobileSaltListView.swift
//  CheckMyMobileSalt
//
//  Created by Helloyunho on 2021/11/13.
//

import SwiftUI

struct MobileSaltListView: View {
    var key: String
    var translated: String?
    var value: String

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                if let translated = translated {
                    Text(translated)
                    Text(key)
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                } else {
                    Text(key)
                }
            }
            Spacer()
            Text(value)
        }
    }
}

struct MobileSaltListView_Previews: PreviewProvider {
    static var previews: some View {
        MobileSaltListView(key: "test", translated: nil, value: "test")
    }
}
