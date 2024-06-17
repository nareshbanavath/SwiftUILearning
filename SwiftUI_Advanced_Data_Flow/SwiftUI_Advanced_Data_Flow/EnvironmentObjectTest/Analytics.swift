//
//  Analytics.swift
//  SwiftUI_Advanced_Data_Flow
//
//  Created by Naresh Banavath on 25/05/24.
//

import Foundation
import SwiftUI

class Analytics : ObservableObject {
    
    func sendLogs(_ logs : String) {
        debugPrint(logs)
    }
}
