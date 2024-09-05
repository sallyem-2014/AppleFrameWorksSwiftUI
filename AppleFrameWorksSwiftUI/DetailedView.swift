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
  
  var body: some View {
      VStack {
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
 
        FrameworkTitleView(name: frameWork.name, image: frameWork.imageName)
          .padding()
        Text(frameWork.description)
          .frame(alignment: .center)
          .padding()
        Button {
          
        } label: {
          Text("Learn More")
            .font(.title2)
        }.frame(width: 300, height: 50)
          .background(.red)
          .foregroundStyle(.white)
          .cornerRadius(10)
      }
    }
}

#Preview {
  DetailedView(frameWork: MockData.frameworks[0], isShownigDetailView: .constant(true))
}
