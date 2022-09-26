//
//  ProfileActionButtonView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 20/09/22.
//

import SwiftUI

struct ProfileActionButtonView: View {
	var isCurrentUser: Bool = false
	var isFollowed: Bool = false
	var body: some View {
		if isCurrentUser {
			HStack(alignment: .center) {
				Button(
					action: {},
					label: {
						Text("Edit Profile")
							.font(.system(size: 14, weight: .semibold))
							.frame(width: 380, height: 32)
							.foregroundColor(.black)
							.overlay(
								RoundedRectangle(cornerRadius: 3)
									.stroke(Color.gray, lineWidth: 1)
							)
					}
				)
				Button(
					action: {},
					label: {
						Image(systemName: "person.crop.circle.badge.plus")
							.font(.system(size: 16))
							.frame(width: 30, height: 30)
							.cornerRadius(18)
							.foregroundColor(.black)
							.overlay(
								RoundedRectangle(cornerRadius: 3)
									.stroke(Color.gray, lineWidth: isFollowed ? 0 : 1)
							)
					}
				)
			}
		} else {
			HStack(alignment: .center) {
				Button(
					action: {
						
					},
					label: {
						Text(isFollowed ? "Following" : "Follow")
							.font(.system(size: 14, weight: .semibold))
							.frame(width: 172, height: 32)
							.foregroundColor(isFollowed ? .black : .white)
							.background(isFollowed ? Color.white : Color.blue)
							.overlay(
								RoundedRectangle(cornerRadius: 6)
									.stroke(Color.gray, lineWidth: isFollowed ? 1 : 0)
							)
					}
				)
				Button(
					action: {},
					label: {
						Text("Message")
							.font(.system(size: 14, weight: .semibold))
							.frame(width: 172, height: 32)
							.foregroundColor(.black)
							.overlay(
								RoundedRectangle(cornerRadius: 6)
									.stroke(Color.gray, lineWidth: 1)
							)
					}
				)
			}
		}
	}
}

struct ProfileActionButtonView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileActionButtonView()
	}
}
