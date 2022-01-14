//
//  ContentView.swift
//  SwiftUIFirebaseChat
//
//  Created by SEvensol on 03/01/2022.
//

import SwiftUI

struct LoginView: View {
    @State var isLogging = true
    @State var email = ""
    @State var Password = ""
    var body: some View {
        NavigationView{
            ScrollView{
                
                VStack(spacing:16){
                    Picker(selection: $isLogging,label: Text("ok")){
                        Text("Login")
                            .tag(true)
                        Text("Create Account")
                            .tag(false)
                    }.pickerStyle(.segmented)
                        .padding()
                    
                    if !isLogging{
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "person.fill")
                                .font(.system(size: 64))
                                .padding()
                        })
                    }
                    
                    
                    Group{
                        TextField("Email", text: $email)
                            .keyboardType(.emailAddress)
                            .autocapitalization(.none)
                           
                        SecureField("Password", text: $Password)
                    } .padding(12)
                        .background(.white)
                    
                   
                    Button {
                        handleAction()
                    } label: {
                        HStack{
                            Spacer()
                            Text(isLogging ? "Login" : "Create Account")
                                .foregroundColor(.white)
                                .padding(.vertical,10)
                                .font(.system(size: 14,weight: .semibold))
                            Spacer()
                        }.background(.blue)
                }
                }
                .padding()
               
            }
            
            .navigationTitle(isLogging ?  "Login" : "Create Account")
            .background(Color(.init(white: 0, alpha: 0.05))
            .ignoresSafeArea())
        }
    }
    
    fileprivate func handleAction()
    {
        if isLogging {
            print("Should Login")
        }else{
            print("Firebase")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
