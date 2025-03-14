//
//  EffortHomeView.swift
//  display
//
//  Created by Pieter Yoshua Natanael on 08/03/25.
//


import SwiftUI

struct EffortHomeView: View {
    @State private var selectedCountry: String = ""
    @State private var selectedProvince: String = ""
    @State private var category: String = ""
    @State private var brand: String = ""
    @State private var adText: String = ""
    @State private var tokenBalance: Int = 3

    let maxCharacters = 180

    var body: some View {
        NavigationView {
            ZStack {
                Color.gray
                    .ignoresSafeArea()
                ScrollView { // Added ScrollView to allow scrolling
                    VStack(spacing: 16) {
                        Image("EffortLogo")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 100)
                            .padding(.top, 40) // Adjusted padding

                        // Location Selection
                        VStack(alignment: .leading) {
                            Text("Select Location")
                                .font(.headline)
                            HStack {
                                TextField("Country", text: $selectedCountry)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                TextField("Province", text: $selectedProvince)
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                Button("Auto") {
                                    // Auto-detect location logic
                                }
                                .buttonStyle(.bordered)
                            }
                        }

                        // Category & Brand Selection
                        VStack(alignment: .leading) {
                            Text("Item Details")
                                .font(.headline)
                            TextField("Category (e.g., Car, Phone)", text: $category)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                            TextField("Brand (e.g., Toyota, iPhone)", text: $brand)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                        }

                        // Ad Input
                        VStack(alignment: .leading) {
                            Text("Ad Description (Max 180 characters)")
                                .font(.headline)
                            TextField("Describe your item and include contact info", text: $adText)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .onChange(of: adText) { newValue in
                                    if newValue.count > maxCharacters {
                                        adText = String(newValue.prefix(maxCharacters))
                                    }
                                }
                            Text("\(adText.count)/\(maxCharacters)")
                                .font(.caption)
                                .foregroundColor(.gray)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        }

                        // Post Button
                        Button(action: {
                            // Handle posting logic
                        }) {
                            Text(tokenBalance > 0 ? "Post " : "Get More Tokens")
                                .frame(maxWidth: .infinity)
                                .font(.title2.bold())
                                .padding()
                                .background(tokenBalance > 0 ? Color.blue : Color.red)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                        .disabled(adText.isEmpty)

                        // View Ads Button
                        NavigationLink(destination: ContentView()) {
                            Text("View Ads")
                                .frame(maxWidth: .infinity)
                                .font(.title2.bold())
                                .padding()
                                .background(Color.green)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }

                        // Token Balance
//                        Text("Tokens: \(tokenBalance)")
//                            .font(.caption)
//                            .padding(.bottom, 10) // Reduced bottom padding
                    }
                    .padding()
                }
            }
        }
    }
}

struct AdsListView: View {
    var body: some View {
        Text("Ads List Page")
    }
}

struct EffortHomeView_Previews: PreviewProvider {
    static var previews: some View {
        EffortHomeView()
    }
}
