//
//  ContentView.swift
//  AppleFrameWorksSwiftUI
//
//  Created by Sally on 04/09/2024.
//

import SwiftUI

let columns: [GridItem] = [GridItem(.flexible()),
                           GridItem(.flexible()),
                           GridItem(.flexible())]

struct ContentView: View {
  @StateObject var vm = FrameWorkGridVM()
    var body: some View {
      
      NavigationView {
        ScrollView {
          LazyVGrid(columns: columns) {
            ForEach(MockData.frameworks) { framework in
              FrameworkTitleView(name: framework.name, image: framework.imageName)
                .onTapGesture {
                  vm.selectedFrameWork = framework
                }
            }.navigationTitle("FramWorks")
          }
        }
      }.padding()
        .sheet(isPresented: $vm.isShowingDetailView) {
          DetailedView(frameWork: vm.selectedFrameWork ?? MockData.frameworks[0], isShownigDetailView: $vm.isShowingDetailView)
        }
      
    }
}

#Preview {
    ContentView()
}
