//
//  SignUp.swift
//  ProgressTracker
//
//  Created by Prajjwal on 28/12/21.
//

import SwiftUI

struct SignUp: View {
    
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack{
            Text("Sign In")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .kerning(1.9)
                .frame(maxWidth : .infinity ,alignment: .leading)
            
            VStack(alignment : .leading ,spacing : 8){
                
                Text("Username")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                TextField("sinhaprajjwal009@gmail.com",text : $email).font(.system(size: 21, weight: .semibold))
                    .foregroundColor(.black).padding(.top)
                
                Divider()
                
                
            }
            .padding(.top,25)
            
            VStack(alignment : .leading ,spacing : 8){
                
                Text("Password")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                
                SecureField("12345",text : $password).font(.system(size: 21, weight: .semibold))
                    .foregroundColor(.black).padding(.top,5)
                
                Divider()
                
                 
            }
            .padding(.top,20)
            
            Button(action : {}){
                
                Text("Forgot your password").fontWeight(.semibold).foregroundColor(.gray)
                
            }
            .frame(maxWidth : .infinity, alignment : .trailing)
            .padding(.top,10)
            
            
            Button(action : {}){
                Image(systemName: "arrow.right")
                    .font(.system(size : 24, weight : .bold))
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .clipShape(Circle())
                    .shadow(color: .purple, radius: 5, x: 0, y: 0)
            }
        }
        
        
        .padding()
        
    }
}

struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp()
    }
}
