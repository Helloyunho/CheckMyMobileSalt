//
//  MobileSaltView.swift
//  CheckMyMobileSalt
//
//  Created by Helloyunho on 2021/11/13.
//

import SwiftUI

struct MobileSaltView: View {
    var body: some View {
        List(Array(MappingTable.keys), id: \.self) { key in
            let translated: String? = MappingTable[key]!
            let salt = MGCopyAnswer(key as CFString, nil)?.takeUnretainedValue()
            if let salt = salt {
                let value = String(describing: salt)
                MobileSaltListView(key: key as String, translated: translated, value: value)
            } else {
                let value = "N/A"
                MobileSaltListView(key: key as String, translated: translated, value: value)
            }
        }
    }
}

struct MobileSaltView_Previews: PreviewProvider {
    static var previews: some View {
        MobileSaltView()
    }
}
