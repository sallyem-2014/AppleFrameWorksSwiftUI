//
//  XButton.swift
//  AppleFrameWorksSwiftUI
//
//  Created by Sally on 07/09/2024.
//

import SwiftUI

struct XButton: View {
  
  @Binding var isShownigDetailView: Bool
  
  var body: some View {
    HStack (){
      Spacer()
      Button(action: {
        isShownigDetailView = false
      },label: {
        Image(systemName: "xmark")
          .foregroundStyle(.gray)
          .font(.title)
      }).frame(alignment: .trailing)
    }.padding(30)
  }
}

#Preview {
  XButton(isShownigDetailView: .constant(false))
}
