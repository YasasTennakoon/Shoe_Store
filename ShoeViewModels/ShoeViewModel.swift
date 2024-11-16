//
//  ShoeViewModel.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-06-15.
//

import Foundation

class ShoeViewModel:ObservableObject{
    
    @Published var shoes:ShoeModel?
    
    init() {
        self.shoes = shoes
    }
    
    func getWeatherData() async throws {
        let url = "http://localhost:8080/shoes"
        guard let shoeUrl = URL(string: url) else{
            print("There is a Error in the URL")
            return
        }
        
        do{
            let (data, _) = try await URLSession.shared.data(from: shoeUrl)
            let decodedData = try JSONDecoder().decode(ShoeModel.self, from: data)
            DispatchQueue.main.async{
                self.shoes = decodedData
            }
            print(decodedData)
        }
        catch{
            print(error)
            print("Something went wrong")
        }
    }
}
