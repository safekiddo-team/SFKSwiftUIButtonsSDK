import Foundation
import SwiftUI

public protocol ButtonTemplate {
    associatedtype Content: View
    
    var padding: EdgeInsets { get }
    var font: Font { get }
    var colors: ButtonColors { get }
    var shape: ButtonShape { get }
    
    @ViewBuilder func makeContent() -> Content
}



