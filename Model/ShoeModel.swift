//
//  shoeModel.swift
//  shoe_store
//
//  Created by Yasas Tennakoon on 2024-04-28.
//

import Foundation
import Observation


struct ShoeModel:Codable,Identifiable{
    let id:String
    let shoeName:String
    let shoePrize:String
    let shoeImage:String
    let shoeBrandLogo:String
    var shoeIsFavorite:Bool
    var shoeIsAddCart:Bool
    var shoeIsShippingFree:Bool
}
