//
//  StoryViewModel.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 19/09/22.
//

import SwiftUI

class StoryViewModel: ObservableObject {
	
	// List of Stories...
	
	@Published var stories: [StoryBundle] = [
		
		StoryBundle(profileName: "Cintia Schirmann", profileImage: "cintia", stories: [
			
			Story(imageURL: "pic1"),
			Story(imageURL: "pic2"),
			Story(imageURL: "pic3"),
			Story(imageURL: "pic4")
		]),
		
		StoryBundle(profileName: "Anitta", profileImage: "anitta", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Neymar", profileImage: "ney", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Mbappe", profileImage: "mb", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Nivy Estephan", profileImage: "ny", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Pedro Scooby", profileImage: "sc", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Jade Picon", profileImage: "ja", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Juliette", profileImage: "ju", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Luana Piovani", profileImage: "lu", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Ba Heck", profileImage: "ba", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
		StoryBundle(profileName: "Xamã", profileImage: "xa", stories: [
			Story(imageURL: "jet1"),
			Story(imageURL: "jet2"),
			Story(imageURL: "jet3")
		]),
	]
	
	
	// Properties
	
	@Published var showStory: Bool = false
	@Published var currentStory: String = ""
}
