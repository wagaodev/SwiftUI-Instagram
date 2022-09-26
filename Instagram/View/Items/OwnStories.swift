//
//  OwnStories.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 20/09/22.
//

import SwiftUI

struct OwnStories: View {
	private let width = UIScreen.main.bounds.width / 3
	
    var body: some View {
			HStack {
				Spacer()
				iconsOwnStories(nameIcon: "squareshape.split.3x3")
				Spacer()
				Spacer()
				iconsOwnStories(nameIcon: "livephoto.play")
				Spacer()
				Spacer()
				iconsOwnStories(nameIcon: "person.crop.rectangle.stack.fill")
				Spacer()
			}.padding(.vertical, 8)
    }
}

struct iconsOwnStories: View {
	var nameIcon: String
	var body: some View {
		Button(action: {},
			label: {
				Image(systemName: nameIcon)
				.resizable()
				.foregroundColor(.black)
				.frame(width: 24, height: 24)
			}
		)
	}
}

struct OwnStories_Previews: PreviewProvider {
    static var previews: some View {
        OwnStories()
    }
}
