

import Foundation
import ObjectMapper

struct Data : Mappable {

    
    var title : String?
    var subreddit_subscribers : Int?
    var subreddit_name_prefixed : String?
    var thumbnail : String?
    var subreddit : String?
    
	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		
		title <- map["title"]
		
		subreddit_name_prefixed <- map["subreddit_name_prefixed"]
		
		thumbnail <- map["thumbnail"]
		
		
		subreddit_subscribers <- map["subreddit_subscribers"]
        subreddit <- map["subreddit"]
		
	}

}
