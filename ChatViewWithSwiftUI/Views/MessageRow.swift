//
//  MessageRow.swift
//  ChatViewWithSwiftUI
//
//  Created by KOTA TAKAHASHI on 2023/11/26.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 60, height: 60)
            Capsule()
                //.frame(width: 60)
        }
        .padding(.bottom)
    }
}

#Preview {
    MessageRow()
}
