//
//  UIApplication.swift
//  SwiftfulCrypto
//
//  Created by Abi M on 7/15/24.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
