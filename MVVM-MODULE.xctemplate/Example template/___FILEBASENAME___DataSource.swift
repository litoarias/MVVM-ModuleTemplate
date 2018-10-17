//  ___FILEHEADER___

import Foundation


/// This is your single model or list of that for decode data from responses
struct ___VARIABLE_productName:identifier___ServiceModel: Codable {
    let id: Int
    let name: String?
    let email: String?
}

/// Make request to obtain your bussines data
class ___VARIABLE_productName:identifier___DataSource {
    weak var viewModel: ___VARIABLE_productName:identifier___ViewModel?
}


// MARK: - ___VARIABLE_productName:identifier___ViewModelToDataSource

extension ___VARIABLE_productName:identifier___DataSource: ___VARIABLE_productName:identifier___ViewModelToDataSource {
    
    /// This is an example of usage, you can delete it!!
    ///
    /// - Parameter completion: clousure for handler data
    func fetchItems(completion: @escaping (_ result: Result<[___VARIABLE_productName:identifier___ServiceModel]>) -> Void) {
        NetworkClient.get(url: URL(string: "https://jsonplaceholder.typicode.com/users")!) { result in
            completion(result as Result<[___VARIABLE_productName:identifier___ServiceModel]>)
        }
    }
    
}
