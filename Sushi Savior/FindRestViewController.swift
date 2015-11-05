//
//  FindRestViewController.swift
//  Sushi Savior
//
//  Created by Jon Harlan on 11/4/15.
//  Copyright © 2015 Jon Harlan. All rights reserved.
//

import UIKit
import Alamofire

class FindRestViewController: UIViewController {

    
    var articles = [Restaurant]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = "http://ajax.googleapis.com/ajax/services/search/news"
        let parameters = ["v": "1.0", "q": "Barack Obama"]
        
        Alamofire.request(.GET, url, parameters: parameters)
            .responseJSON { response in
                // gets the json
                if let JSON = response.result.value {
                    //                    print("JSON: \(JSON)")
                    
                    //GET list of Single Articles
                    let articleDictionaries = JSON.valueForKey("responseData")?.valueForKey("results") as! [NSDictionary]
                    
                    //extracts SPECIFIC DATA we want
                    self.articles = articleDictionaries.map {
                        Restaurant(title: $0["titleNoFormatting"] as! String, publisher: $0["publisher"] as! String)
                    }
                    print(self.articles[1].publisher)
                    
//                    self.performSegueWithIdentifier("showNewsSegue", sender: nil)
                }
        }

    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
