//
//  SignUpScreen.swift
//  Cuidado
//
//  Created by Sam Davis Omekara  on 11/25/22.
//

import SwiftUI

struct SignUpScreen: View {
    @State private var name = ""
    @State private var username = ""
    @State private var email = ""
    @State private var phone = ""
    
    @State private var consentTriggerred: Bool = false
    @State private var checked = false
    
    var body: some View {
    
            ZStack{
                ScreenBackground()
                VStack {
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 117, height: 35)
                        .padding()
                    
                    Text("Sign Up")
                        .foregroundColor(.accentColor)
                        .font(.system(size: 32, weight: .bold))
                        .padding(20)

                    
                    VStack(spacing: 20) {
                        HStack(){
                            
                            Image(systemName: "person")
                            TextField("Name", text: $name )
                                .padding(.leading, 5)
                                .frame(width: 299, height: 48)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08) ,radius: 60, x: 0.0, y: 16)
                                
                            
                        }
                        .padding(.horizontal, 10)
                        .background(Color("GreySignIn"))
                        HStack(){
                            
                            Image(systemName: "mail")
                            TextField("Username", text: $username )
                                .padding(.leading, 5)
                                .frame(width: 299, height: 48)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08) ,radius: 60, x: 0.0, y: 16)
                                
                            
                        }
                        .padding(.horizontal, 10)
                        .background(Color("GreySignIn"))
                        HStack(){
                            
                            Image(systemName: "envelope")
                            TextField("Email Address", text: $email )
                                .padding(.leading, 5)
                                .frame(width: 299, height: 48)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08) ,radius: 60, x: 0.0, y: 16)
                                
                            
                        }
                        .padding(.horizontal, 10)
                        .background(Color("GreySignIn"))
                        HStack(){
                            
                            Image(systemName: "phone")
                            TextField("Phone Number", text: $phone )
                                .padding(.leading, 5)
                                .frame(width: 299, height: 48)
                                .cornerRadius(50.0)
                                .shadow(color: Color.black.opacity(0.08) ,radius: 60, x: 0.0, y: 16)
                                
                            
                        }
                        .padding(.horizontal, 10)
                        .background(Color("GreySignIn"))
                        
                        
                    }
                    .padding()
                    HStack(spacing: 0) {
                        CheckBoxView(checked: $checked)
                            .padding(.horizontal, 5)
                        Text("Yes, I agree with the ")
                        Text("Consent Disclosure")
                            .foregroundColor(.accentColor)
        
                            .sheet(isPresented: $consentTriggerred ){
                                ConsentScreen()
                                
                            }
                            .onTapGesture {
                                consentTriggerred = true
                        }
                    }
                    Spacer()
                    NavigationLink(destination: SurveyScreen()) {
                      
                            Text("Create Account")
                                .padding(.horizontal, 30)
                                                
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.roundedRectangle)
                    .controlSize(.large)
                .padding()
                    HStack(spacing:0) {
                        Text("Already have an account?")
                        Text("Login")
                            .foregroundColor(.accentColor)
                            .padding(.horizontal, 3)
                  
                    }
                    .padding()
                    
                    Spacer()
                }
               
        }
    }
}

struct SignUpScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignUpScreen()
    }
}
