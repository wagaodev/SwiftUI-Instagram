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
			LazyVStack(spacing: 28){
				ForEach(0 ..< 20){ _ in
					NotificationCell()
				}
			}
		}
	}
}

struct NotificationsView_Previews: PreviewProvider {
	static var previews: some View {
		NotificationsView()
	}
}
