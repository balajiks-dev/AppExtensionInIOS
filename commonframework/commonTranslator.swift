//
//  commonTranslator.swift
//  TodaExtensionTech\
//
//  Created by Balaji Sundaram on 14/07/20.
//  Copyright © 2020 Balaji Sundaram. All rights reserved.
//

import Foundation

public struct commonTranslator {
    public init() {}
    public static func translate(commonName: String) -> String? {
        if commonName == "Welcome" {
            return "स्वागत हे"
        } else if (commonName == "English") {
            return "अंग्रेज़ी"
        }
        else {
            return "No data found!!!"

        }
    }
}
