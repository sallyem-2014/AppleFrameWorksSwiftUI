//
//  SafariView.swift
//  AppleFrameWorksSwiftUI
//
//  Created by Sally on 07/09/2024.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable  {
  
  let url: String
  
  func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView>) -> SFSafariViewController {
    
   let url = URL(string: url) ?? URL(string: "apple.com")!
    return SFSafariViewController(url: url)
  }
  
  func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {}
}
