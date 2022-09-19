//
//  StoryView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 19/09/22.
//

import SwiftUI

struct StoryView: View {
	@EnvironmentObject var storyData: StoryViewModel
    var body: some View {
			if storyData.showStory {
				TabView(selection: $storyData.currentStory){
					ForEach(storyData.stories){bundle in
						Image(bundle.stories[0].imageURL)
							.resizable()
							.aspectRatio(contentMode: .fit)
					}
				}
				.tabViewStyle(.page(indexDisplayMode: .automatic))
//				.tabViewStyle(.automatic)
				.frame(maxWidth: .infinity, maxHeight: .infinity)
				.background(.black)
				.overlay(
					Button(action: {
						withAnimation {
							storyData.showStory = false
						}
					}, label: {
					Image(systemName: "xmark")
							.font(.title2)
							.foregroundColor(.white)
					})
					.padding()
					,alignment: .bottom
				)
//				Text("FEATURE EM DESENVOLVIMENTO").foregroundColor(.white).font(.system(size: 12))
				.transition(.move(edge: .bottom))
			}
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
