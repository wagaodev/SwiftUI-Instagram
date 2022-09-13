//
//  LazyView.swift
//  InstagramSwiftUITutorial
//
//  Created by Stephen Dowless on 1/8/21.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
