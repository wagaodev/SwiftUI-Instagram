//
//  NotificationCell.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 16/09/22.
//

import SwiftUI

struct NotificationCell: View {
	let likedMessage: String = "liked one of your posts"
	let followingMessage: String = "started following you"
	
	
	private let profileImage: String = "wagner1"
	private let imageLiked: String = "wagner2"
	private let profileName = "wagão"
	let follow: String = "Follow"
	let following: String = "Following"
	let follower: Bool = false
	private let size: Double = 36
	let liked: Bool = false
	
	
	var body: some View {
		VStack {
			HStack {
				Image(profileImage)
					.resizable()
					.scaledToFill()
					.frame(width: size, height: size)
					.clipped()
					.cornerRadius(size / 2)
				
				Text(profileName)
					.font(.system(size: 14, weight: .semibold))
				
				if(liked) {
					Text(likedMessage)
						.font(.system(size: 14, weight: .semibold))
					Image(imageLiked)
						.resizable()
						.scaledToFill()
						.frame(width: size, height: size)
						.clipped()
				} else {
					Text(followingMessage)
						.font(.system(size: 14))
					Spacer()
					Button(action: {
						print("Clicou...")
					},label: {
						follower ? Text(following) : Text(follow)
						}
					).buttonStyle(.borderedProminent)
						.cornerRadius(size)
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
