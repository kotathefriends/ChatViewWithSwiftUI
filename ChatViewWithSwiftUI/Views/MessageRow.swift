//
//  MessageRow.swift
//  ChatViewWithSwiftUI
//
//  Created by KOTA TAKAHASHI on 2023/11/26.
//

import SwiftUI

struct MessageRow: View {
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 48, height: 48)
            Text("こんにちは！")
                .padding()
                .background(.white)
                .cornerRadius(30)
            VStack(alignment: .trailing) {
                Spacer()
                Text("既読")
                Text(formattedDataString)
            }
            .foregroundColor(.secondary)
            .font(.footnote)
            Spacer()
        }
        .padding(.bottom)
    }
    
    private var formattedDataString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}

#Preview {
    MessageRow()
        .background(.cyan)
}
