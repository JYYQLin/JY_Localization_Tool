//
//  JY_Localization_Tool_Extension.swift
//  JY_Localization_Tool
//
//  Created by JYYQLin on 2024/8/28.
//

import UIKit

extension UIApplication {
    public static func yq_projectName() -> String {
        let bundle = Bundle.main
        let projectName = bundle.infoDictionary?["CFBundleName"] as? String ?? "Unknown Project Name"

        return projectName
    }
}

extension String {
    public func yq_localized(tableName: String? = nil, languageType: JY_Enum_Language? = nil) -> String {
        
        let systemLanguage = languageType == nil ? yq_localized_manager.yq_current_language : languageType
                
        return NSLocalizedString(self, tableName: (tableName == nil ? UIApplication.yq_projectName() : tableName!), bundle:  Bundle(path: Bundle.main.path(forResource: systemLanguage?.rawValue, ofType: "lproj") ?? "") ?? Bundle.main, value: "", comment: "")
    }
}
