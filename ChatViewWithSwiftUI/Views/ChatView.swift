//
//  ChatView.swift
//  ChatViewWithSwiftUI
//
//  Created by KOTA TAKAHASHI on 2023/11/26.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack(spacing: 0) {
            // Message Area
           messagageArea
            
            // Navigation Area
            .overlay(navigationArea, alignment: .top)
            
            // Input Area
            inputArea
        }
    }
}

#Preview {
    ChatView()
}

extension ChatView {
    
    private var messagageArea: some View {
        ScrollView {
            VStack(spacing: 0) {
                ForEach(0..<15) { _ in
                    MessageRow()
                }
            }
            .padding(.horizontal)
            .padding(.top, 72)
        }
        .background(.cyan)
    }
    
    private var inputArea: some View {
        HStack {
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Circle()
                .frame(width: 40, height: 40)
            Capsule()
                .frame(height: 40)
            Circle()
                .frame(width: 40, height: 40)
            
        }
        .padding()
        .background(.white)
    }
    
    private var navigationArea: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .font(.title2)
            Text("Title")
                .font(.title2.bold())
            Spacer()
            HStack(spacing: 16) {
                Image(systemName: "text.magnifyingglass")
                Image(systemName: "phone")
                Image(systemName: "line.3.horizontal")
            }
            .font(.title2)
        }
        .padding()
        .background(.cyan.opacity(0.9))
        
    }
}
