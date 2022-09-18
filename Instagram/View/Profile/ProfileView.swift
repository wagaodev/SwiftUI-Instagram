//
//  ProfileView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 13/09/22.
//

import SwiftUI

struct ProfileView: View {
	
	var body: some View {
		ScrollView {
			ProfileHeader()
			LazyVStack {
				PostGridView()
			}
		}
		
	}
}

struct ProfileView_Previews: PreviewProvider {
	static var previews: some View {
		ProfileView()
	}
}
