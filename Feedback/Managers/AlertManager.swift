//
//  AlertManager.swift
//  Feedback
//
//  Created by Kirill Dev on 24.07.2023.
//

import SwiftUI

// MARK: - Error Message for Alert
struct ErrorMessage: Equatable {
    let title: String?
    let message: String?
    var joinedTitle: String {
        (title ?? "") + "\n\n" + (message ?? "")
    }
    
    static func == (lhs: ErrorMessage, rhs: ErrorMessage) -> Bool {
        lhs.title == rhs.title && lhs.message == rhs.message
    }
}

// MARK: - Alert Manager
final class AlertManager: NSObject, ObservableObject {
    static let shared = AlertManager()
    @Published var nextAlertMessage = ErrorMessage(title: nil, message: nil)
    
    func showNextAlertMessage(title: String?, message: String?) {
        DispatchQueue.main.async {
            
            self.nextAlertMessage = ErrorMessage(title: title, message: message)
        }
    }
    
    func alertConfirmed() {
        showNextAlertMessage(title: nil, message: nil)
    }
}
