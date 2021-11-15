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
            let translated = MappingTable[key]!
            let value = String(describing: MGCopyAnswer(key as CFString).takeUnretainedValue())
            MobileSaltListView(key: key, translated: translated, value: value)
        }
    }
}

struct MobileSaltView_Previews: PreviewProvider {
    static var previews: some View {
        MobileSaltView()
    }
}
