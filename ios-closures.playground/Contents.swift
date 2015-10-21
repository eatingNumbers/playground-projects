//: iOS Closures

import UIKit

// Example - UIView Animation 

let someLabel = UILabel()

UIView.animateWithDuration(1.0, animations: { () -> Void in
    // Carry out animation sequence
    someLabel.alpha = 0.3
    }) { (failure: Bool) -> Void in
        // When animatoin completes, execute this closure
}

// Example 2: Making a network request

let session = NSURLSession(configuration: NSURLSessionConfiguration.defaultSessionConfiguration())
let url = NSURL(string: "http://blog.teamtreehosue.com/api/get_recent_summary/?count=20")
let request = NSURLRequest(URL: url!)

let downloadTask = session.downloadTaskWithRequest(request, completionHandler: {(url: NSURL!, response: NSURLResponse!, error: NSError!) -> Void in
    // Execute the body of the closure
})

// This will do the same as the above constant "downloadTask"
let someOtherDownloadTask = session.downloadTaskWithRequest(request) {
    (let url, let response, let error) in
    // Execute the body of the closure
}

downloadTask.resume()

// Typealias
typealias JSONDictionaryCompletion = ([String:AnyObject]?) -> ()

func downloadJSONFromURL(completion: JSONDictionaryCompletion) {
    
}

func getRecentBlogPosts(completion: (NSURLResponse! -> Void)) {
    let treehouseDownloadTask = session.downloadTaskWithRequest(request) {
        (let url, let response, let error) in
        completion(response)
    }
}

getRecentBlogPosts {
    (let response) in
    // Start body of method
}







