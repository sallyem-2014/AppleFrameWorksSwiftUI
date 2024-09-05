//
//  FrameWorkGridVM.swift
//  AppleFrameWorksSwiftUI
//
//  Created by Sally on 05/09/2024.
//

import SwiftUI

class FrameWorkGridVM: ObservableObject  {
  
  var selectedFrameWork: Framework? {
    didSet {
      isShowingDetailView = true
    }
  }
 @Published  var isShowingDetailView = false
}
