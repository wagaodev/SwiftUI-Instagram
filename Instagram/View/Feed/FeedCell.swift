//
//  FeedCell.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 13/09/22.
//

import SwiftUI

struct FeedCell: View {
	
	let profileImage: String = "wagner1"
	let feedImage: String = "wagner2"
	let profileName: String = "Wagão"
	let profileFriend: String = "neymarjr"
	
	
	var body: some View {
		VStack(alignment: .leading) {
			// user info
			HStack {
				Image(profileImage)
					.resizable()
					.scaledToFill()
					.frame(width: 36, height: 36)
					.clipped()
					.cornerRadius(18)
					.padding([.horizontal, .vertical], 6)
				
				Text(profileName)
					.font(.system(size: 14, weight: .semibold))
			}
			
			// post image
			
			Image(feedImage)
				.resizable()
				.scaledToFill()
				.frame(maxHeight: 440)
				.clipped()
			
			
			// action buttons
			
			HStack(spacing: 16) {
				Button(action: {print("DEBUG: Clicou no coração")}, label: {
					Image(systemName: "heart")
						.font(.system(size: 20))
					
				})
				Button(action: {print("DEBUG: Clicou no comentário")}, label: {
					Image(systemName: "bubble.right")
						.font(.system(size: 20))
				})
				Button(action: {print("DEBUG: Clicou no enviar")}, label: {
					Image(systemName: "paperplane")
						.font(.system(size: 20))
				})
				Spacer()
				Button(action: {print("DEBUG: Clicou no bookmark")}, label: {
					Image(systemName: "bookmark")
						.font(.system(size: 20))
				})
			}
			.padding([.horizontal, .vertical], 8)
			
			// caption
			
			HStack {
				Text(profileName).font(.system(size: 14, weight: .semibold))
				+ Text(" Fotinho curtindo uma tarde.").font(.system(size: 15))
				
			}.padding(.horizontal, 8)
			HStack {
				Text("Ver todos os 235 comentários")
					.font(.system(size: 13))
					.foregroundColor(.gray)
				
			}.padding(.horizontal, 8)
			HStack {
				Text(profileFriend).font(.system(size: 14, weight: .semibold))
				+ Text(" Esse cara me ensinou a jogar.").font(.system(size: 15))
			}.padding(.horizontal, 8)
			
			HStack {
				Image(profileImage)
					.resizable()
					.scaledToFill()
					.frame(width: 36, height: 36)
					.clipped()
					.cornerRadius(18)
					.padding(.horizontal, 6)
				
				Text("Adicione um comentário...")
					.font(.system(size: 14, weight: .regular))
					.foregroundColor(.gray)
			}
			HStack {
				Text("Há 2 horas·")
					.font(.system(size: 9))
					.foregroundColor(.gray)
				Text("Ver tradução")
					.font(.system(size: 9))
					.foregroundColor(.primary)
			}.padding(.horizontal, 6)
		}
	
		
	}
}

struct FeedCell_Previews: PreviewProvider {
	static var previews: some View {
		FeedCell()
	}
}
