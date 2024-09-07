//
//  FrameworkTitleView.swift
//  AppleFrameWorksSwiftUI
//
//  Created by Sally on 04/09/2024.
//

import SwiftUI

struct FrameworkTitleView: View {
   
  var name: String
  var image: String
 
  var body: some View {
     // VStack {
    HStack {
          Image(image)
          .resizable()
          .frame(width: 90, height: 90)
          
          Text(name)
          .font(.title2)
          .fontWeight(.semibold)
          .scaledToFit()
          .minimumScaleFactor(0.5)
      }
    }
}

#Preview {
  FrameworkTitleView(name: "", image: "")
}
