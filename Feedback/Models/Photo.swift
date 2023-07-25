//
//  Photo.swift
//  Feedback
//
//  Created by Kirill Dev on 24.07.2023.
//

import UIKit

struct Photo: Identifiable {
  var id = UUID()
  var imageName: String
  
  static func examples() -> [Photo] {
    var images = [Photo]()
    images.append(Photo(imageName: "1"))
    images.append(Photo(imageName: "2"))
    images.append(Photo(imageName: "3"))
    images.append(Photo(imageName: "4"))
    return images
  }
}
