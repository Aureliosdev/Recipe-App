//
//  SettingsView.swift
//  Recipe App
//
//  Created by Aurelio Le Clarke on 22.10.2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "person")
                            Text("General")
                                .disclosureGroupStyle(.automatic)
                            
                        }
                    }
                    Button {
                        
                    } label: {
                        HStack {
                           Image(systemName: "faceid")
                            Text("Privacy protection")
                                .disclosureGroupStyle(.automatic)
                        }
                    }
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "speaker.wave.2.fill")
                            
                            Text("Sound & Vibration")
                                .disclosureGroupStyle(.automatic)
                        }
                  
                            
                    }
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "nosign")
                            Text("Remove Adds")
                                .disclosureGroupStyle(.automatic)
                        }
                            
                    }
                    Button {
                      print("")
                    } label: {
                        HStack {
                            Image(systemName: "iphone")
                            Text("About the app")
                                .disclosureGroupStyle(.automatic)
                            
                        }
                            
                    }
                       
                    Button {
                      print("")
                    } label: {
                        HStack {
                            Image(systemName: "questionmark")
                            Text("Services & feedbaack")
                                .disclosureGroupStyle(.automatic)
                            
                        }
                    }
                      
                    Button {
                      print("")
                    } label: {
                        HStack {
                          Image(systemName: "rectangle.portrait.and.arrow.right")
                            Text("Log out")
                                .disclosureGroupStyle(.automatic)
                            
                        }
                    }
                      
                }
                
                
                Spacer()
                Text("v 1.0.0")
                    .navigationTitle("Settings")
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
