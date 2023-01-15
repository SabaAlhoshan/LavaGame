//
//  LavaFloorPage.swift
//  LavaGame
//
//  Created by saba on 19/06/1444 AH.
//

import SwiftUI

struct LavaFloorPage: View {
    @State var isActive : Bool = false
    @State private var textSwitch = false
    
    var body: some View {
        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)
                .opacity(0.90)
            if isActive {
                LavaRoom()
            }  else {
                VStack{
                    ZStack{
                        
                        Text((textSwitch ? "\"THE FLOOR IS LAVA\"" : "\"THE FLOOR IS LAVA\""))
                        //                            .frame(width: 300,height: 150)
                            .foregroundColor(Color("Lets Start Color"))
                            .font(.system(size: 35, weight: .heavy, design: .rounded))
                            .multilineTextAlignment(.center)
                            .offset(y:-160)
                        //                        LottieViewTime(lottieFile: "caution_ani.json")
                        LottieViewTime(lottieFile: "Warning.json")
                            .offset(y:40)
                        //التكست الاول بالطرف
                        //                        LottieView(lottieFile: "16773-fire.json")
                        //                            .offset(y:-250)
                        
                        //
                        //                        LottieViewTime(lottieFile: "Cadre 7-2.json")
                        //                            .frame(width:500, height:2000)
                        //                            .offset(y:200)
                        //3 second for the fire json lottie
                        //                        
                        //                        LottieViewTime(lottieFile: "MC-2.json")
                        //                            .offset(y:200)
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.textSwitch.toggle()
                        
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3.5){
                        
                        withAnimation{
                            self.isActive = true
                        }}
                    
                }
            }}
    }
}


struct LavaFloorPage_Previews: PreviewProvider {
    static var previews: some View {
        LavaFloorPage()
    }
}
