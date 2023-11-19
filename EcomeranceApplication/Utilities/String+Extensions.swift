// String+Extensions.swift
// EcomeranceApplication
// Created by Mashhood Qadeer on 20/11/2023.

import Foundation
import SwiftUI

extension String {
    
    var toColor : Color {
        get {
            Color(self)
        }
    }
    
    static func concat(_ params: [String]) -> String {
           return params.joined(separator: "")
    }
    
}
