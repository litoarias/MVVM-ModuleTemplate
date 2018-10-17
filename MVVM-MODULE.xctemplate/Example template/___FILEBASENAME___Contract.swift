//  ___FILEHEADER___

import Foundation


/// Communication from View to ViewModel
protocol ___VARIABLE_productName:identifier___ViewToViewModelContract {
    func didLoadData()
}

/// Communication from ViewModel to View
protocol ___VARIABLE_productName:identifier___ViewModelToViewContract {
    func bootstrap()
}

/// Communication from ViewModel to DataSource
protocol ___VARIABLE_productName:identifier___ViewModelToDataSource {
    func fetchItems(completion: @escaping (_ result: Result<[___VARIABLE_productName:identifier___ServiceModel]>) -> Void)
}

/// Communication from DataSource to Viewmodel
protocol ___VARIABLE_productName:identifier___DataSourceToViewModel { }


