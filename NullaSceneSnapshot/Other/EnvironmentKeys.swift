//
//  EnvironmentKeys.swift
//  NullaSceneSnapshot
//
//  Created by Matheus Silveira Venturini on 20/11/24.
//

import SwiftUI

struct StageSelectAssetsKey: EnvironmentKey {
    static var defaultValue = StageSelectImageAssets()
}

extension EnvironmentValues {
    var stageSelectAssets: StageSelectImageAssets {
        get { self[StageSelectAssetsKey.self] }
        set { self[StageSelectAssetsKey.self] = newValue }
    }
}
