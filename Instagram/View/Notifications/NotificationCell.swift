//
//  NotificationCell.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 16/09/22.
//

import SwiftUI

struct NotificationCell: View {
	
	let likedMessage: String = " liked one of your posts"
	let followingMessage: String = "started following you"
	
	@State private var showPostImage: Bool = false
	
	var body: some View {
		VStack {
			HStack(spacing: 2){
				Image("wagner1")
					.resizable()
					.scaledToFill()
					.frame(width: 36, height: 36)
					.clipShape(Circle())
					.padding(.trailing, 8)
				
				Text("wagao").font(.system(size: 14, weight: .semibold)) + Text(likedMessage).font(.system(size: 15))
				
				Spacer()
				
				if showPostImage {
					Image("wagner2")
						.resizable()
						.scaledToFill()
						.frame(width: 40, height: 40)
						.padding(.trailing, 8)
				} else {
					Button(
						action:
							{ print("Clicou...")},
						label: {
							Text("Follow")
								.font(.system(size: 12, weight: .semibold))
								.padding(.horizontal)
								.padding(.vertical, 8)
								.background(.blue)
								.foregroundColor(.white)
								.cornerRadius(20)
						}
					)
				}
				
			}.padding(.horizontal)
		}
	}
}

struct NotificationCell_Previews: PreviewProvider {
	static var previews: some View {
		NotificationCell()
		
	}
}
