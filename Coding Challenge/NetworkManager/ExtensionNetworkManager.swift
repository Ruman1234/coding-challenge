//
//  ExtensionNetworkManager.swift
//  Coding Challenge
//
//  Created by Ruman on 16/10/2021.
//

import Foundation
import ObjectMapper
import Alamofire

extension NetworkManager {

    func getMovies(viewcontroller : UIViewController? = UIViewController(),
                   success : @escaping (Json4Swift_Base) -> Void,
                   failure : @escaping (NSError) -> Void)  {
        
    
    self.request(url: Constants.BASE_URL  + Constants.Movies, method: .get,parameters:[:],viewcontroller: viewcontroller) { (response) in
        
        if response.response?.statusCode == 200 {
            do{
                let value = try response.result.get()
                success(Mapper<Json4Swift_Base>().map(JSON: value as! [String : Any])!)
            }catch{
                failure(NSError())
            }
            
        }else{
            failure(NSError())
        }
    }
    }
    
}
