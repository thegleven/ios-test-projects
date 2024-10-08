//
//  ContentModel.swift
//  City Sights
//
//  Created on 13/06/2024.
//

import Foundation
import CoreLocation

class ContentModel: NSObject, CLLocationManagerDelegate, ObservableObject {
    
    var locationManager = CLLocationManager()
    
    @Published var authorizationState = CLAuthorizationStatus.notDetermined
    
    @Published var restaurants = [Business]()
    @Published var sights = [Business]()
    
    @Published var placemark: CLPlacemark?
    
    override init() {
        
        // Init method of NSObject
        super.init()
        
        // Set content model as the delegate of the location manager
        locationManager.delegate = self
    }
    
    func requestGeolocationPermission() {
        
        // Request permission from the user
        locationManager.requestWhenInUseAuthorization()
    }
    
    // MARK: - Location Manager Delegate Methods
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        
        // Update the authorizationState property
        authorizationState = locationManager.authorizationStatus
        
        if locationManager.authorizationStatus == .authorizedAlways ||
            locationManager.authorizationStatus == .authorizedWhenInUse {
            
            // We have permission
            // Start geolocating the user, after we get permission
            locationManager.startUpdatingLocation()
        }
        else if locationManager.authorizationStatus == .denied {
            // We don't have permission
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        // Gives us the location of the user
        let userLocation = locations.first
        
        if userLocation != nil {
            
            // We have a location
            // Stop requesting the location after we get it once
            locationManager.stopUpdatingLocation()
            
            // Get the placemark of the user
            let geoCoder = CLGeocoder()
            
            geoCoder.reverseGeocodeLocation(userLocation!) { (placemarks, error) in
                
                // Check that there aren't errors
                if error == nil && placemarks != nil {
                    
                    // Take the first placemark
                    self.placemark = placemarks?.first
                }
            }
            
            // If we have the coordinates of the user, send into Yelp API
            getBusinesses(category: Constants.sightsKey, location: userLocation!)
            getBusinesses(category: Constants.restaurantsKey, location: userLocation!)
        }
    }
    
    // MARK: - Yelp API methods
    
    func getBusinesses(category:String, location:CLLocation) {
        
        // Create URL
        /*
        let urlString = "https://api.yelp.com/v3/businesses/search?latitude=\(location.coordinate.latitude)&longitude=\(location.coordinate.longitude)&categories=\(category)&limit=6"
        let url = URL(string: urlString
        */
        var urlComponents = URLComponents(string: Constants.apiUrl)
        urlComponents?.queryItems = [
            URLQueryItem(name: "latitude", value: String(location.coordinate.latitude)),
            URLQueryItem(name: "longitude", value: String(location.coordinate.longitude)),
            URLQueryItem(name: "categories", value: category),
            URLQueryItem(name: "limit", value: "6")
        ]
        
        let url = urlComponents?.url
        
        if let url = url {
        
            // Create URL Request
            var request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10.0)
            request.httpMethod = "GET"
            request.addValue("Bearer \(Constants.apiKey)", forHTTPHeaderField: "Authorization")
            
            // Get URLSession
            let session = URLSession.shared
            
            // Create Data Task
            let dataTask = session.dataTask(with: request) { (data, response, error) in
                
                // Check that there isn't an error
                if error == nil {
                    
                    do {
                        // Parse json
                        let decoder = JSONDecoder()
                        let result = try decoder.decode(BusinessSearch.self, from: data!)
                        
                        // Sort businesses
                        var businesses = result.businesses
                        businesses.sort { (b1, b2) -> Bool in
                            return b1.distance ?? 0 < b2.distance ?? 0
                        }
                        
                        // Call the get image function of the businesses
                        for b in businesses {
                            b.getImageData()
                        }
                        
                        DispatchQueue.main.async {
                            
                            // Assign results to the appropriate property
                            switch category {
                            case Constants.sightsKey:
                                self.sights = businesses
                            case Constants.restaurantsKey:
                                self.restaurants = businesses
                            default:
                                break
                            }
                        }
                    }
                    catch {
                        print(error)
                    }
                }
            }
            
            // Start the Data Task
            dataTask.resume()
        }
    }
}
