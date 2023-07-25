//
//  CustomTextField.swift
//  Feedback
//
//  Created by Kirill Dev on 24.07.2023.
//

import SwiftUI

// MARK: - Custom Text Field
struct CustomTextField: View {
  var placeholder: String
  @Binding var value: String
  
  var lineColor: Color
  var width: CGFloat
  
    var body: some View {
      VStack {
        TextField(self.placeholder, text: $value)
          .font(.body)
          
          Rectangle().frame(height: self.width)
          .padding(.horizontal, 8).foregroundColor(self.lineColor)
        }
      }
    }
