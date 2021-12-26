//
//  ContentView.swift
//  ProgressTracker
//
//  Created by Prajjwal on 25/12/21.
//

import SwiftUI

struct ContentView: View {
    var body : some View {
        ZStack{
            Color.backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack{
                ZStack{
                    Pulsation()
                    Track()
                    numLabel()
                    Outline()
                    
                
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct numLabel : View {
    var number : CGFloat = 0
    var body : some View {
        ZStack{
            Text(String(format : "%.0f",number))
                .font(.system(size: 65)).fontWeight(.light)
                .colorInvert()
        }
    }
}

struct Outline : View {
    var percentage : CGFloat = 0
    var colors : [Color] = [Color.outlineColor]
    var body: some View{
        ZStack{
            Circle()
                .fill(Color.clear)
                .frame(width : 300,height : 300)
                .overlay(
                    Circle()
                        .trim(from : 0 ,to : percentage * 0.01  )
                        .stroke(style: StrokeStyle(lineWidth: 20, lineCap: .round, lineJoin: .round))
                        .fill(AngularGradient(gradient : .init(colors : colors),center: .center,startAngle: .zero,endAngle : .init (degrees: 360)))
                    
                ).animation(.spring(response: 2.0, dampingFraction: 0.6, blendDuration: 1.0 ))
        }
    }
}




struct Track : View {
    var colors : [Color] = [Color.trackColor]
    var body : some View {
        
        ZStack{
            Circle()
                .fill(Color.backgroundColor)
                .frame(width : 100 , height : 100 )
                .overlay(
                    Circle()
                        .stroke(style :StrokeStyle(lineWidth : 20))
                        .fill(AngularGradient (gradient : .init (colors : colors),center : .center))
                
                )
        }
    }
}

struct Pulsation  : View {
    
    @State private var pulsate = false
    var colors : [Color] = [Color.pulsatingColor]
    @State var colorAlt = false
    var body : some View {
        ZStack{
            Circle()
                .fill(colorAlt==true ? .pink.opacity(0.9) : Color.pulsatingColor )
                .frame(width : 245,height : 245)
                .scaleEffect(pulsate ? 5.0 : 1.1 )
            
                .animation(Animation.easeInOut(duration: 1.1).repeatForever(autoreverses: true))
            
                .onAppear{
                    self.pulsate.toggle()
                    self.colorAlt.toggle()
                }
        }
    }
    
}

