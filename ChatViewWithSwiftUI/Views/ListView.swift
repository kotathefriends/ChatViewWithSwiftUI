//
//  ListView.swift
//  ChatViewWithSwiftUI
//
//  Created by KOTA TAKAHASHI on 2023/11/28.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        VStack {
            // Header
            HStack {
                Text("トーク")
                    .font(.title2.bold())
                
                Spacer()
                
                HStack {
                    Circle()
                        .frame(width: 40, height: 40)
                    Circle()
                        .frame(width: 40, height: 40)
                    Circle()
                        .frame(width: 40, height: 40)
                }
            }
            
            // List
            ScrollView {
                VStack {
                    ForEach(0..<5) { _ in
                        HStack {
                            Circle()
                                .frame(width: 60, height: 60)
                            VStack(alignment: .leading) {
                                Text("タイトル")
                                Text("最新のメッセージ")
                                    .font(.footnote)
                                    .foregroundColor(Color(.secondaryLabel))
                            }
                            Spacer()
                            Text("12/31")
                                .font(.caption)
                                .foregroundColor(Color(.secondaryLabel))
                        }
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ListView()
}
