//
//  UploadPostView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 13/09/22.
//

import SwiftUI

struct UploadPostView: View {
	
	@State private var selectedImage: UIImage?
	@State var postImage: Image?
	@State var captionText = ""
	
	var body: some View {
		VStack {
			if postImage != nil {
				Button(action: {}, label: {
					Image("plus_photo")
						.resizable()
						.renderingMode(.template)
						.scaledToFill()
						.frame(width: 180, height: 180)
						.clipped()
						.padding(.top, 56)
						.foregroundColor(.black)
				})
			} else {
				HStack(alignment: .top){
					Image("wagner1")
						.resizable()
						.scaledToFill()
						.frame(width: 96, height: 96)
						.clipped()
					
					TextField("Enter your caption...", text: $captionText)
				}.padding()
//					.padding(.bottom, 49)
				Button(action: {}, label: {
					Text("Share")
						.font(.system(size: 18, weight: .semibold))
						.foregroundColor(.white)
						.frame(width: 300, height: 50)
						.background(.blue)
						.cornerRadius(10)
				})
			}
			Spacer()
		}
	}
}

struct UploadPostView_Previews: PreviewProvider {
	static var previews: some View {
		UploadPostView()
	}
}
