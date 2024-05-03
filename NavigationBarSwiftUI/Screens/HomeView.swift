//
//  HomeView.swift
//  NavigationBarSwiftUI
//
//  Created by Bhushan Borse DXC on 22/04/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(0..<5) { i in
                        NavigationLink(destination: DetailsView(selectedRow: "\(i)")) {
                            RowView(row: "\(i)")
                        }
                    }
                } header: {
                    Text("Section one")
                }
                
                Section {
                    ForEach(0..<5) { i in
                        RowView(row: "\(i)")
                    }
                } header: {
                    Text("Section Two")
                } footer: {
                    Text("End Of The Section")
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    NavigationLink(destination: ProfileView(), label: {
                        Image(systemName: "person.fill")
                            .scaledToFit()
                            .foregroundStyle(.cyan)
                            .onTapGesture {
                                print("person image tap")
                                
                            }
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingView()) {
                        Image(systemName: "gearshape.fill")
                            .scaledToFit()
                            .foregroundStyle(.cyan)
                            .onTapGesture {
                                print("Setting image tap")
                            }
                    }
                }
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.cyan)
        }
    }
}

#Preview {
    HomeView()
}
