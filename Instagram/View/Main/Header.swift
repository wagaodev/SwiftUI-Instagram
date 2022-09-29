// Created 29/Sep/2022 by Wagner Barboza Goulart


import SwiftUI

struct InstagramLogo: View {
	var body: some View {
		HStack {
			HStack {
				Image("instagram")
					.resizable()
					.clipped()
					.scaledToFit()
					.frame(width: 120, height: 50)
			}
		}
	}
}

struct HeaderButtons: View {
	var body: some View {
		HStack(spacing: 14) {
			Button(
				action: {print("Clicoou")},
				label: {
					Image(systemName: "plus.app")
						.font(.system(size: 19))
						.foregroundColor(.primary)
				}
			)
			Button(
				action: {print("Clicoou")},
				label: {
					Image(systemName: "heart")
						.font(.system(size: 19))
						.foregroundColor(.primary)
				}
			)
			Button(
				action: {print("Clicoou")},
				label: {
					Image(systemName: "message")
						.font(.system(size: 19))
						.foregroundColor(.primary)
				}
			)
		}
		.padding(.trailing, 8)
	}
}
