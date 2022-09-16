//
//  SearchBar.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 14/09/22.
//

import SwiftUI
import UIKit

struct SearchBar: View {
	
	@Binding var text: String
	@Binding var isEditing: Bool
	
	var body: some View {
		HStack {
			TextField("Search...", text: $text)
				.padding(8)
				.padding(.horizontal, 24)
				.background(Color(.systemGray6))
				.cornerRadius(8)
				.overlay(
					HStack {
						Image(systemName: "magnifyingglass")
							.foregroundColor(.gray)
							.frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
							.padding(.leading, 8)
					}
				)
				.onTapGesture {
					isEditing = true
				}
			if isEditing {
				Button(action: {
					withAnimation {
						isEditing = false
						text = ""
						UIApplication.shared.endEditing()
					}
				}, label: {
					Text("Cancel")
						.foregroundColor(.black)
				})
				.padding(.trailing, 8)
				.transition(.move(edge: .trailing))
			}
		}
	}
}


struct SearchBar_Previews: PreviewProvider {
	static var previews: some View {
		SearchBar(text: .constant("Search..."), isEditing: .constant(true))
	}
}
