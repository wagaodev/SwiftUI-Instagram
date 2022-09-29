//
//  MainTabView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 13/09/22.
//

import SwiftUI

struct MainTabView: View {
	var body: some View {
		NavigationView {
			TabView {
				FeedView()
					.tabItem {
						Image(systemName: "house")
					}
				
				SearchView()
					.tabItem {
						Image(systemName: "magnifyingglass")
					}
				
				UploadPostView()
					.tabItem {
						Image(systemName: "plus.viewfinder")
					}
				
				NotificationsView()
					.tabItem {
						Image(systemName: "bell.badge")
					}
				
				ProfileView()
					.tabItem {
						Image(systemName: "person.crop.circle")
					}
			}
			
			.toolbar {
				ToolbarItemGroup(placement: .navigationBarLeading) {
					InstagramLogo()
					
				}
				ToolbarItemGroup(placement: .navigationBarTrailing){
					HeaderButtons()
				}
			}
			.accentColor(.black)
		}
	}
}



struct MainTabView_Previews: PreviewProvider {
	static var previews: some View {
		MainTabView()
	}
}
