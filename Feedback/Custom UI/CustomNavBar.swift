//
//  CustomNavBar.swift
//  Feedback
//
//  Created by Kirill Dev on 24.07.2023.
//

import SwiftUI

struct CustomNavBar: View {
  var body: some View {
    HStack {
      backButton
      Spacer()
      title
      Spacer()
      basketButton
    }
    .padding()
    .accentColor(.white)
    .background(
      Color.black.ignoresSafeArea(edges: .top)
    )
    .foregroundColor(.white)
  }
  
  // PreviewProvider
  struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        CustomNavBar()
        Spacer()
      }
    }
  }
}
  
  // Extension CustomNavBar
  extension CustomNavBar {
    private var backButton: some View {
      Button(action: {
        
      }, label: {
        Image(systemName: "chevron.backward")
          .font(.title2)
      })
    }
    
    private var title: some View {
      VStack(spacing: 4) {
        Text("Оставить отзыв")
          .font(.title2)
      }
    }
    
    private var basketButton: some View {
      Button {
        
      } label: {
        Image(systemName: "basket")
          .font(.title3)
      }
    }
  }
  
