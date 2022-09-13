//
//  FeedView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 13/09/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
			ScrollView {
				ForEach(0 ..< 20) { _ in
					FeedCell()
				}
			}
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
