//
//  CustomPreferenceKey.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 25/05/24.
//

import Foundation
import SwiftUI

/// PreferenceKe
struct ChildPreference : PreferenceKey {
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        debugPrint("current value \(value) nextVlaue \(nextValue())")
        value = value.isEmpty ? nextValue() : value
    }
}

