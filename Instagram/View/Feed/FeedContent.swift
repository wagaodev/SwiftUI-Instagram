//
//  FeedContent.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 19/09/22.
//

import SwiftUI

struct FeedContent: View {
    var body: some View {
			ScrollView {
				LazyVStack(spacing: 32) {
					ForEach(0 ..< 20) { _ in
						FeedCell()
					}
				}
			}
    }
}

struct FeedContent_Previews: PreviewProvider {
    static var previews: some View {
        FeedContent()
    }
}
