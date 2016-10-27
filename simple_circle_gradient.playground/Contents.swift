//: Playground - noun: a place where people can play
import Cocoa
import AppKit
import PlaygroundSupport

class SquareWithCircleView: NSView{
    override func draw(_ dirtyRect: NSRect)
    {
        let gradient:NSGradient = NSGradient(colorsAndLocations:(NSColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),0.0),(NSColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 1.0),0.5),(NSColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0),1.0))!
        
        
        let bPath:NSBezierPath = NSBezierPath(rect: dirtyRect)
        let fillColor = NSColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.0)
        fillColor.set()
        bPath.fill()
        
   
        
        //let circleFillColor = NSColor(red: 0.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let circleRect = NSMakeRect(dirtyRect.size.width/4, dirtyRect.size.height/4, dirtyRect.size.width/2, dirtyRect.size.height/2)
        let cPath: NSBezierPath = NSBezierPath(ovalIn: circleRect)
        //circleFillColor.set()
        gradient.draw(in: cPath, angle: 0.0)
        
        //cPath.fill()
    }
}
//struct human {
//    
//    var sex:String = "F"
//    var age:Int = 14
//    var from:String = "France"
//
//    func info() -> String {
//        var cule:String = "he"
//        if sex=="F" { cule = "she" }
//
//        let info = "\(cule.capitalized) is \(age) and \(cule) is from \(from)"
//        
//        return info
//        
//    }
//    
//}
//
//
//var Him = human()
//var Her = human(sex: "H", age: 25, from: "Japan")



var myRect = NSRect(x: 0, y: 0, width: 250, height: 250)

var myView = SquareWithCircleView(frame: myRect)





PlaygroundPage.current.liveView = myView
