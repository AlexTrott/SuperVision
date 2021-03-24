//
//  MixpanelConfig.swift
//  
//
//  Created by Alex Trott on 24/03/2021.
//

import Foundation

public struct MixpanelConfig: InitializableConfig {
    public let token: String
    public let serverURL: String
    public let loggingEnabled: Bool
}
