//  ___FILEHEADER___

import Foundation


/// View Model

final class ___VARIABLE_productName:identifier___ViewModel {
    
    // MARK: -  Outlets
    weak var view: ___VARIABLE_productName:identifier___View?
    
    // MARK: -  Properties
    private var dataSource: ___VARIABLE_productName:identifier___DataSourceContract?
    var sections: [(name: String, rows: [___VARIABLE_productName:identifier___ItemModel])] = []
    
    
    // MARK: -  Constructor - init
    init(dataSource: ___VARIABLE_productName:identifier___DataSourceContract) {
        self.dataSource = dataSource
    }    
}


// MARK: - ___VARIABLE_productName:identifier___ViewToViewModelContract

extension ___VARIABLE_productName:identifier___ViewModel: ___VARIABLE_productName:identifier___ViewModelInputContract {
    
    func didLoadData() {
        loadData { [weak self] in
            guard let ws = self else { return }
            ws.view?.bootstrap()            
        }
    }
  
}

// MARK: - Private Methods

extension ___VARIABLE_productName:identifier___ViewModel {
    
    private func loadData(completion: @escaping () -> Void) {
        dataSource?.fetchItems { [weak self] result in
            DispatchQueue.main.async {
                guard let ws = self else { return }
                switch result {
                case .failure(_):
                    ws.sections = []
                case .success(let items):
                    let sortedtestModels = items
                        .map({ ___VARIABLE_productName:identifier___ItemModel(item: $0) })
                        .sorted(by: { $0.name < $1.name })
                    ws.sections.append(ws.section(with: sortedtestModels, start: "A", end: "I"))
                    ws.sections.append(ws.section(with: sortedtestModels, start: "J", end: "Q"))
                    ws.sections.append(ws.section(with: sortedtestModels, start: "R", end: "Z"))
                }
                completion()
            }
        }
    }
    
    private func section(with test: [___VARIABLE_productName:identifier___ItemModel], start: Character, end: Character) -> (name: String, rows: [___VARIABLE_productName:identifier___ItemModel]) {
        let filteredtest = test
            .filter({ !$0.name.isEmpty })
            .filter({
                $0.name.uppercased().first! >= start && $0.name.uppercased().first! <= end
            })
        return (name: "\(start) to \(end)",
            rows: filteredtest)
    }
}
