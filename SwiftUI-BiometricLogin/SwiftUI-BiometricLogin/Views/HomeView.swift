//
//  HomeView.swift
//  SwiftUI-BiometricLogin
//
//  Created by Eldar Tutnjic on 5. 7. 2022..
//

import SwiftUI

struct HomeView: View {
    
    @State var userName = ""
    @State var password = ""
    
    var body: some View {
        
        VStack {
            
            Spacer(minLength: 0)
            
            Image(systemName: "faceid")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .padding(.vertical)
            
            HStack {
                VStack(alignment: .leading, spacing: 12, content: {
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Please sign in to continue")
                        .foregroundColor(Color.white.opacity(0.5))
                })
                Spacer(minLength: 0)
            }
            .padding()
            Spacer(minLength: 0)
        }
        .background(Color.AppColors.bgPurple)
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
