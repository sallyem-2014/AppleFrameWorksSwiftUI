//
//  DetailedView.swift
//  AppleFrameWorksSwiftUI
//
//  Created by Sally on 04/09/2024.
//

import SwiftUI

struct DetailedView: View {
  
  var frameWork: Framework
  @Binding var isShownigDetailView: Bool
  @State var isShowingSafriiew: Bool = false
  var body: some View {
    VStack {
      // XButton(isShownigDetailView: $isShownigDetailView)
      Spacer()
      FrameworkTitleView(name: frameWork.name, image: frameWork.imageName)
      Spacer()
      
      Text(frameWork.description)
        .frame(alignment: .center)
        .padding()
      Spacer()
      Button {
        isShowingSafriiew = true
      } label: {
        Text("Learn More")
          .font(.title2)
      }.frame(width: 300, height: 50)
        .background(.red)
        .foregroundStyle(.white)
        .cornerRadius(10)
        .sheet(isPresented: $isShowingSafriiew, content: {
          SafariView(url: frameWork.urlString)
        })
      Spacer()
    }
  
  }
}

#Preview {
  DetailedView(frameWork: MockData.frameworks[0], isShownigDetailView: .constant(true))
}
