//  ___FILEHEADER___

import Foundation


/// This is a model what is used to transfer data between UI and bussines 
struct ___FILEBASENAMEASIDENTIFIER___ {

    
    /// This is an example of the implementation for Users request, you can delete it or replace for your custom implementation!!
    var name: String
    var email: String
    
    init(item: ___VARIABLE_productName:identifier___) {
        name = item.name ?? ""
        email = item.email ?? ""
    }
    
}
