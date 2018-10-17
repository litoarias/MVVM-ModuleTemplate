//  ___FILEHEADER___

import Foundation

/// This is a model what is used to transfer data between UI and bussines
struct ___FILEBASENAMEASIDENTIFIER___ {
    
    var name: String
    var email: String
    
    init(item: ___VARIABLE_productName:identifier___ServiceModel) {
        name = item.name ?? ""
        email = item.email ?? ""
    }
    
}
