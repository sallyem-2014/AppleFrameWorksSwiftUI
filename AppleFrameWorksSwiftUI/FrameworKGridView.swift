//
//  ContentView.swift
//  AppleFrameWorksSwiftUI
//
//  Created by Sally on 04/09/2024.
//

import SwiftUI

struct ContentView: View {
  @StateObject var frameworkGridVM = FrameWorkGridVM()
    var body: some View {
      
      NavigationView {
        ScrollView {
          LazyVGrid(columns: frameworkGridVM.columns) {
            ForEach(MockData.frameworks) { framework in
              FrameworkTitleView(name: framework.name, image: framework.imageName)
                .onTapGesture {
                  frameworkGridVM.selectedFrameWork = framework
                }
            }.navigationTitle("FramWorks")
          }
        }
      }.padding()
        .fullScreenCover(isPresented: $frameworkGridVM.isShowingDetailView) {
          DetailedView(frameWork: frameworkGridVM.selectedFrameWork ?? MockData.frameworks[0], isShownigDetailView: $frameworkGridVM.isShowingDetailView)
        }
      
    }
}

#Preview {
    ContentView()
}
