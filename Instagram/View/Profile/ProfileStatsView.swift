//
//  ProfileStatsView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 18/09/22.
//

import SwiftUI

struct ProfileStatsView: View {
	
	let value: Int
	let title: String
	
	var body: some View {
		HStack{
			VStack(alignment: .center) {
				Text("\(value)")
					.font(.system(size: 14))
				Text(title)
					.font(.system(size: 14))
			}
			.frame(width: 80, alignment: .center)
		}
	}
}

struct ProfileStatView_Previews: PreviewProvider {
    static var previews: some View {
			ProfileStatsView(value: 100, title: "Posts")
    }
}
