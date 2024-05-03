//
//  DetailsView.swift
//  NavigationBarSwiftUI
//
//  Created by Bhushan Borse DXC on 22/04/24.
//

import SwiftUI

struct DetailsView: View {
    var selectedRow: String
    
    var body: some View {
        NavigationView {
            Text("Hello, I am a Details view! & the selected row number is \(selectedRow)")
        }
    }
}

#Preview {
    DetailsView(selectedRow: "10")
}
