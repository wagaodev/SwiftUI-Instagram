//
//  UserCell.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 14/09/22.
//

import SwiftUI

struct UserCell: View {
	private let profileUsername: String = "wagão"
	private let profileName: String = "Wagner Goulart"
	let size: Double = 48
	
	var body: some View {
		HStack{
			Image("wagner1")
				.resizable()
				.scaledToFill()
				.frame(width: size, height: size)
				.clipped()
				.cornerRadius(size / 2)
			
			VStack(alignment: .leading){
				Text(profileUsername)
					.font(.system(size: 16, weight: .semibold))
				Text(profileName)
			}
			Spacer()
		}
	}
}

struct UserCell_Previews: PreviewProvider {
	static var previews: some View {
		UserCell()
	}
}
