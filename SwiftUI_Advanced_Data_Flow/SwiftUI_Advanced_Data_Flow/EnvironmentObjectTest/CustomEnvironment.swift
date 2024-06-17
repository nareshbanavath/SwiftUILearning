//
//  CustomEnvironment.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 24/05/24.
//

import Foundation
import SwiftUI
struct AccessToken : EnvironmentKey {
    
    static var defaultValue: String = "DefaultToken"
    
}

extension EnvironmentValues {
    var accessToken : String {
        get { self[AccessToken.self]  }
        set { self[AccessToken.self] = newValue  }
    }
}
