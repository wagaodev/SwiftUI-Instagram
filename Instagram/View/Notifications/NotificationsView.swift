//
//  NotificationsView.swift
//  Instagram
//
//  Created by Wagner Barboza Goulart on 13/09/22.
//

import SwiftUI

struct NotificationsView: View {
	
	var body: some View {
		ScrollView {
			LazyVStack(spacing: 20){
				ForEach(0 ..< 20){ _ in
					NotificationCell()
				}
			}
			.padding(.top, 20)
		}
	}
}

struct NotificationsView_Previews: PreviewProvider {
	static var previews: some View {
		NotificationsView()
	}
}
