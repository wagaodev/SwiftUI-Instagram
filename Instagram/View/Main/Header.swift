//
//  Header.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 18/09/22.
//

import SwiftUI

struct Header: View {
	var body: some View {
		HStack {
			HStack {
				Image("instagram")
					.resizable()
					.clipped()
					.scaledToFit()
					.frame(width: 120, height: 50)
			}
			Spacer()
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
			}.padding(.trailing, 8)
		}
	}
}



struct Header_Previews: PreviewProvider {
	static var previews: some View {
		Header()
	}
}
