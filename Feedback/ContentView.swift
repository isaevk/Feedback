//
//  ContentView.swift
//  Feedback
//
//  Created by Kirill Dev on 24.07.2023.
//

import SwiftUI

struct ContentView: View {
  @State var feedback: Feedback
  let natureInspiration = Photo.examples()
  
  var body: some View {
    CustomNavBar()
    VStack(alignment: .leading, spacing: 16) {
      HStack {
        // Restaurant button
        Button {
          
        } label: {
          Text("Ресторан")
            .overlay {
              RoundedRectangle(cornerRadius: 10)
                .stroke(.orange, lineWidth: 2)
            }
            .padding(.horizontal)
        }
        
        Spacer()
        
        // Delivery button
        Button {
          
        } label: {
          Text("Доставка")
            .overlay {
              RoundedRectangle(cornerRadius: 10)
                .stroke(.orange, lineWidth: 2)
            }
            .padding(.horizontal)
        }
      }
      
      // Name lable + name txt field
      
      VStack(alignment: .leading, spacing: 1) {
        
        Label {
          Text("Имя")
            .foregroundColor(.white)
        } icon: {
          
        }
        .padding(8)
        CustomTextField(placeholder: "Name",
                        value: $feedback.name,
                        lineColor: .gray,
                        width: 1)
        
        .padding(8)
      }
      
    }
    
    
    // Number label + naumber txt field
    
    VStack(alignment: .leading, spacing: 1) {
      Label {
        Text("Номер телефона")
          .foregroundColor(.white)
      } icon: {
        
      }
      .padding(8)
      
      CustomTextField(placeholder: "Phone",
                      value: $feedback.phone,
                      lineColor: .gray,
                      width: 1)
        .padding(8)
    }
    
    // Order label + order txt field
    
    VStack(alignment: .leading, spacing: 1) {
      Label {
        Text("Номер Заказа")
          .foregroundColor(.white)
      } icon: {
        
      }
      .padding(8)
      
      CustomTextField(placeholder: "Order",
                      value: $feedback.order,
                      lineColor: .gray,
                      width: 1)
        .padding(8)
    }
    
    // Scroll View Photos
    
    ScrollView(.horizontal) {
               LazyHStack(spacing: 10) {
                 ForEach(natureInspiration) { inspiration in
                   Image(inspiration.imageName)
                     .resizable()
                   }
               }
               .padding()
           }
           .frame(height: 200)
    
    Button {
      
    } label: {
      Image(systemName: "plus")
      Text("Добавить фото")
    }
    .padding(.leading)
    
    // Feedback label + feedback txt field
    VStack(alignment: .leading, spacing: 1) {
      Label {
        Text("Отзыв")
          .foregroundColor(.white)
      } icon: {
        
      }
      .padding(8)
      
      CustomTextField(placeholder: "Feedback",
                      value: $feedback.txtFeedback,
                      lineColor: .gray,
                      width: 1)
      .padding(8)
    }
    
    // Send feedback button
    
    Button {
      
    } label: {
      Text("ОТПРАВИТЬ ОТЗЫВ")
        .overlay {
          RoundedRectangle(cornerRadius: 20)
            .stroke(.orange, lineWidth: 2)
        }
        .background(Color.orange)

    }
//    .background(Color.black)
  }
}
  
  struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
        ContentView(feedback: Feedback(name: "",
                                       phone: "",
                                       order: "",
                                       txtFeedback: ""))
        .background(.black)
        Spacer()
      }
    }
  }
  
