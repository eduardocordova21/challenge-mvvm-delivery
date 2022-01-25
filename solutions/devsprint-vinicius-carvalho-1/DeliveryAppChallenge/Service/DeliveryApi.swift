//
//  DeliveryApi.swift
//  DeliveryAppChallenge
//
//  Created by Rodrigo Borges on 27/10/21.
//

import Foundation

// TODO: Change to service abstraction
struct DeliveryApi {

    func fetchRestaurants(_ completion: ([String]) -> Void) {

        completion(["Restaurant 1", "Restaurant 2", "Restaurant 3"])
    }

    func searchAddresses(_ completion: ([String]) -> Void) {

        completion(["Address 1", "Address 2", "Address 3"])
    }

    func fetchRestaurantDetails(_ completion: (Restaurant?) -> Void) {

        guard let dataFromJson = Data.readData(from: "restaurant-details"),
              let restaurantDetails = try? JSONDecoder().decode(Restaurant.self, from: dataFromJson) else {
                  completion(nil)
                  return
              }
        completion(restaurantDetails)
    }

    func fetchMenuItem(_ completion: (String) -> Void) {
        completion("Menu Item")
    }
}
