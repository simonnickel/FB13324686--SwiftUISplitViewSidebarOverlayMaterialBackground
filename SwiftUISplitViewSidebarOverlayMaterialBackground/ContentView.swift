//
//  ContentView.swift
//  SwiftUISplitViewSidebarOverlayMaterialBackground
//
//  Created by Simon Nickel on 01.11.23.
//

import SwiftUI

struct ContentView: View {
	
	@State private var selected: Int? = 1
	@State private var showInspector: Bool = false
	
	var body: some View {
		
		NavigationSplitView {
			List(selection: $selected) {
				Label("List", systemImage: "circle").tag(1)
			}
			.background(.ultraThinMaterial)
//			.background(.ultraThickMaterial)
		} detail: {
			List {
				Rectangle()
				Circle()
					.fill(.yellow)
			}
			.navigationTitle("List")
		}

	}
	
}

#Preview {
    ContentView()
}
