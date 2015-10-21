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
