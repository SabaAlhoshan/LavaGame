//
//  FullLavaPage.swift
//  LavaGame
//
//  Created by saba on 19/06/1444 AH.
//

import SwiftUI

struct FullLavaPage: View {
    @State var isActive : Bool = false
    
    
    var body: some View {
        ZStack{
            Color.accentColor.edgesIgnoringSafeArea(.all)
            if isActive {
                LavaFloorPage()
            }  else {
                VStack{
                    ZStack{
                        
                        
                        //
                        //                        LottieViewTime(lottieFile: "Cadre 7-2.json")
                        //                            .frame(width:1000, height:1000)
                        //                            .offset(y:200)
                        //
                        LottieViewTime(lottieFile: "MC-6.json")
                            .frame(width: 1500, height:1500)
                            .offset(y:190)
                        
                        
                    }
                    
                }
                
                
                
                
                
                
                
                
                
                
                
                .onAppear{
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                        
                        withAnimation{
                            self.isActive = true
                        }}
                    
                }
            }}
    }
}


struct FullLavaPage_Previews: PreviewProvider {
    static var previews: some View {
        FullLavaPage()
    }
}
