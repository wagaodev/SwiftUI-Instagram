//
//  ProfileHeader.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 17/09/22.
//

import SwiftUI

struct ProfileHeader: View {
	
	private let width = UIScreen.main.bounds.width
	
	var body: some View {
		VStack(alignment: .leading){
			HStack {
				Image("wagner1")
					.resizable()
					.scaledToFill()
					.frame(width: 80, height: 80)
					.clipShape(Circle())
					.padding(.leading)
				
				Spacer()
				HStack(alignment: .center, spacing: 8) {
					ProfileStatsView(value: 820, title: "Posts")
					ProfileStatsView(value: 50800, title: "Followers")
					ProfileStatsView(value: 388, title: "Following")
				}.padding(.trailing, 32)
			}
			Text("Wagner Barboza")
				.font(.system(size: 14, weight: .semibold))
				.padding([.leading, .top])
			Text("Desenvolvedor IOS at Neon")
				.font(.system(size: 14))
				.padding(.leading)
			
			HStack {
				Spacer()
				ProfileActionButtonView()
				Spacer()
			}
			
			.padding(.top)
		}
	}
}

struct ProfileHeader_Previews: PreviewProvider {
	static var previews: some View {
		ProfileHeader()
	}
}
