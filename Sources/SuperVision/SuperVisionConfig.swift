//
//  File.swift
//  
//
//  Created by Alex Trott on 28/03/2021.
//

import Foundation

public struct SuperVisionConfig {
    public let analytics: (manager: AnalyticManager, config: InitializableConfig)
    public let crash: (manager: CrashManager, config: InitializableConfig)
}
