//
//  SettingViewModel.swift
//  Line
//
//  Created by 양시관 on 3/10/24.
//

import Foundation


import Foundation

class SettingViewModel: ObservableObject {
    
    @Published var sectionItems: [SectionItem] = []

    init() {
        self.sectionItems = [
            .init(label: "모드설정", settings: AppearanceType.allCases.map { .init(item: $0) })
        ]
    }
}
