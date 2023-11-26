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
            userThumb
            messageText
            messageState
            Spacer()
        }
        .padding(.bottom)
    }
}

#Preview {
    MessageRow()
        .background(.cyan)
}

extension MessageRow {
    
    private var userThumb: some View {
        Image("user01")
            .resizable()
            .frame(width: 48, height: 48)
            .clipShape(Circle())
    }
    
    private var messageText: some View {
        Text("こんにちは！")
            .padding()
            .background(.white)
            .cornerRadius(30)
    }
    
    private var messageState: some View {
        VStack(alignment: .trailing) {
            Spacer()
            Text("Read")
            Text(formattedDataString)
        }
        .foregroundColor(.secondary)
        .font(.footnote)
    }
    private var formattedDataString: String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: Date())
    }
}
