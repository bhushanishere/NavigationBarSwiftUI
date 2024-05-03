//
//  RowView.swift
//  NavigationBarSwiftUI
//
//  Created by Bhushan Borse DXC on 22/04/24.
//

import SwiftUI

struct RowView: View {
    @State var row: String
    
    var body: some View {
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 30, height: 30)
                .foregroundStyle(.orange)
                .padding(5)
            Text("Row \(row)")
                .font(.headline)
                .foregroundStyle(.cyan)
            Spacer()
            Image(systemName: "heart.fill")
                .foregroundStyle(.orange)
        }
    }
}

#Preview {
    RowView(row: "row")
        .padding()
}
