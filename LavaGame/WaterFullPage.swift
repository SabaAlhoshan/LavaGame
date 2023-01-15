//
//  WaterFullPage.swift
//  LavaGame
//
//  Created by saba on 21/06/1444 AH.
//
import SwiftUI

struct WaterFullPage: View {
    @State var isActive : Bool = false
    
    
    var body: some View {
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            if isActive {
                DrinkWaterPage()
            }  else {
                ZStack{
                    
                    LottieViewTime(lottieFile:"MC-4.json" )
                        .frame(width: 1500,height:1500)
                        .offset(y:200)
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                .onAppear{
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        
                        withAnimation{
                            self.isActive = true
                        }}
                    
                }
            }
        }}
}



struct WaterFullPage_Previews: PreviewProvider {
    static var previews: some View {
        BacktoNormalPage()
    }
}

