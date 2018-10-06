//  ___FILEHEADER___

import Foundation


/// This is your single model or list of that for decode data from responses
struct ___VARIABLE_productName:identifier___: Codable {

    
    /// Example usage
    let id: Int
    let name: String?
    let email: String?
}


/// Interface for requests
protocol ___VARIABLE_productName:identifier___DataSourceType {
    
    
    /// This is an example of usage, you can delete it!!
    ///
    /// - Parameter completion: clousure for handler data
    func fetch___VARIABLE_productName:identifier___(completion: @escaping (_ result: Result<[___VARIABLE_productName:identifier___]>) -> Void)
    
}


/// Make request to obtain your bussines data
class ___VARIABLE_productName:identifier___DataSource: ___VARIABLE_productName:identifier___DataSourceType {
    
    
    /// This is an example of usage, you can delete it!!
    ///
    /// - Parameter completion: clousure for handler data
    func fetch___VARIABLE_productName:identifier___(completion: @escaping (_ result: Result<[___VARIABLE_productName:identifier___]>) -> Void) {
        NetworkClient.get(url: URL(string: "https://jsonplaceholder.typicode.com/users")!) { result in
            completion(result as Result<[___VARIABLE_productName:identifier___]>)
        }
    }
    
}

