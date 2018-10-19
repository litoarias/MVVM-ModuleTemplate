//  ___FILEHEADER___

import Foundation


/// Communication from View to ViewModel
protocol ___VARIABLE_productName:identifier___ViewModelInputContract {
    func didLoadData()
}

/// Communication from ViewModel to View
protocol ___VARIABLE_productName:identifier___ViewModelOutputContract {
    func bootstrap()
}

/// Communication from ViewModel to DataSource
protocol ___VARIABLE_productName:identifier___DataSourceContract {
    func fetchItems(completion: @escaping (_ result: Result<[___VARIABLE_productName:identifier___ServiceModel]>) -> Void)
}

