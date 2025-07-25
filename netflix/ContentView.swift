//
//  ContentView.swift
//  netflix
//
//  Created by usman ali on 25/07/2025.
//

import SwiftUI


struct NavTabViewControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> NavTabViewController {
        return NavTabViewController()
    }
    
    func updateUIViewController(_ uiViewController: NavTabViewController, context: Context) {
        // Update the view controller if needed
    }
}

struct ContentView: View {
    var body: some View {
        NavTabViewControllerWrapper()
            .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    ContentView()
}
