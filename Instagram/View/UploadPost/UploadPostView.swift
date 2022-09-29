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
	@State var imagePickerPresented = false
	
	var body: some View {
		VStack {
			if postImage == nil {
				Button(action: { imagePickerPresented.toggle()}, label: {
					Image("plus_photo")
						.resizable()
						.renderingMode(.template)
						.scaledToFill()
						.frame(width: 180, height: 180)
						.clipped()
						.padding(.top, 56)
						.foregroundColor(.black)
				}).sheet(isPresented: $imagePickerPresented, onDismiss: loadImage, content: {
					ImagePicker(image: $selectedImage)
				})
			} else if let image = postImage {
				HStack(alignment: .top){
						image 
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

extension UploadPostView {
	func loadImage(){
		guard let selectedImage = selectedImage else { return }
		postImage = Image(uiImage: selectedImage)
	}
}

struct UploadPostView_Previews: PreviewProvider {
	static var previews: some View {
		UploadPostView()
	}
}
