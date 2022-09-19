//
//  StorysListView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 18/09/22.
//

import SwiftUI

struct StorysListView: View {
	@StateObject var storyData = StoryViewModel()
	
	var body: some View {
		//		NavigationView {
		ScrollView(.horizontal, showsIndicators: false){
			
			// User Stories
			HStack(spacing: 16){
				Button {
					
				} label: {
					Image("wagner1")
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: 50, height: 50)
						.clipShape(Circle())
						.overlay(
							Image(systemName: "plus")
								.padding(4)
								.background(.blue, in: Circle())
								.foregroundColor(.white)
								.padding(1)
								.background(.black, in: Circle())
								.offset(x: 8, y: 8)
							,alignment: .bottomTrailing
						)
				}
				// Stories
				ForEach($storyData.stories) { $bundle in
					ProfileStoryView(bundle: $bundle)
						.environmentObject(storyData)
				}
			}
			.padding()
			.padding(.top, 10)
		}
		.overlay(
			StoryView()
				.environmentObject(storyData)
		)
	}
}

struct StorysListView_Previews: PreviewProvider {
	static var previews: some View {
		StorysListView()
	}
}

struct ProfileStoryView: View {
	@Binding var bundle: StoryBundle
	
	@Environment(\.colorScheme) var scheme
	@EnvironmentObject var storyData: StoryViewModel
	
	var body: some View {
		Image(bundle.profileImage)
			.resizable()
			.aspectRatio(contentMode: .fill)
			.frame(width: 50, height: 50)
			.clipShape(Circle())
			.padding(2)
			.background(scheme == .dark ? .black : .white, in: Circle())
			.padding(3)
			.background(
				LinearGradient(colors: [
					.orange,
					.pink,
					.yellow
				],startPoint: .top,
											 endPoint: .bottom)
				.clipShape(Circle())
				.opacity(bundle.isSeen ? 0 : 1)
			)
			.onTapGesture {
				withAnimation {
					bundle.isSeen = true
					
					// Saving current bundle and toggling story...
					storyData.currentStory = bundle.id
					storyData.showStory = true
				}
			}
	}
}
