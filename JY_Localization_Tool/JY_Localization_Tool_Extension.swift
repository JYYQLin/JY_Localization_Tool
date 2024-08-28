//
//  JY_Localization_Tool_Extension.swift
//  JY_Localization_Tool
//
//  Created by JYYQLin on 2024/8/28.
//

import UIKit

extension String {
    public func yq_localized(tableName: String, languageType: JY_Enum_Language? = nil) -> String {
        
        let systemLanguage = languageType == nil ? yq_localized_manager.yq_current_language : languageType
                
        return NSLocalizedString(self, tableName: tableName, bundle:  Bundle(path: Bundle.main.path(forResource: systemLanguage?.rawValue, ofType: "lproj") ?? "") ?? Bundle.main, value: "", comment: "")
    }
}
