//  ___FILEHEADER___

import Foundation


/// View Model

final class ___VARIABLE_productName:identifier___ViewModel {
    
    // MARK: -  Outlets
    weak var view: ___VARIABLE_productName:identifier___View?
    
    // MARK: -  Properties
    var dataSource: ___VARIABLE_productName:identifier___DataSource?
    
    // MARK: -  Constructor - init
    init(dataSource: ___VARIABLE_productName:identifier___DataSource) {
        self.dataSource = dataSource
    }    
}


// MARK: - ___VARIABLE_productName:identifier___ViewToViewModelContract

extension ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewToViewModelContract { }


// MARK: - ___VARIABLE_productName:identifier___DataSourceToViewModel

extension ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___DataSourceToViewModel { }

