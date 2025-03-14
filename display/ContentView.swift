//
//  ContentView.swift
//  display
//
//  Created by Pieter Yoshua Natanael on 03/03/25.
//

import SwiftUI

struct Ad: Identifiable {
    let id = UUID()
    let details: String
}

struct ContentView: View {
    let ads: [Ad] = [
        Ad(details: "Dijual cepat! Toyota Avanza 2018, tangan pertama, pajak panjang, siap pakai. Harga nego. Hub: 0812-3456-7890"),
        Ad(details: "Toyota Yaris 2020, KM rendah, kondisi mulus, surat lengkap. Harga 200jt nego. Minat? WA: 0856-7890-1234"),
        Ad(details: "Jual Toyota Fortuner 2019, diesel, putih, full orisinil, siap touring! Hubungi: 0821-5678-9012"),
        Ad(details: "Butuh mobil keluarga? Toyota Innova 2017, bensin, rawatan dealer, harga miring! WA: 0813-2468-1357"),
        Ad(details: "Toyota Agya 2021, irit BBM, city car nyaman, DP 10jt bisa bawa pulang! Cek unit di Jaksel. Call: 0819-5678-2345"),
        Ad(details: "Dijual cepat! Toyota Avanza 2018, tangan pertama, pajak panjang, siap pakai. Harga nego. Hub: 0812-3456-7890"),
        Ad(details: "Toyota Yaris 2020, KM rendah, kondisi mulus, surat lengkap. Harga 200jt nego. Minat? WA: 0856-7890-1234"),
        Ad(details: "Toyota Yaris 2020, KM rendah, kondisi mulus, surat lengkap. Harga 200jt nego. Minat? WA: 0856-7890-1234"),
        Ad(details: "Jual Toyota Fortuner 2019, diesel, putih, full orisinil, siap touring! Hubungi: 0821-5678-9012"),
        Ad(details: "Butuh mobil keluarga? Toyota Innova 2017, bensin, rawatan dealer, harga miring! WA: 0813-2468-1357"),
        Ad(details: "Toyota Agya 2021, irit BBM, city car nyaman, DP 10jt bisa bawa pulang! Cek unit di Jaksel. Call: 0819-5678-2345"),
        Ad(details: "Dijual cepat! Toyota Avanza 2018, tangan pertama, pajak panjang, siap pakai. Harga nego. Hub: 0812-3456-7890"),
        Ad(details: "Toyota Yaris 2020, KM rendah, kondisi mulus, surat lengkap. Harga 200jt nego. Minat? WA: 0856-7890-1234"),
        Ad(details: "Toyota Yaris 2020, KM rendah, kondisi mulus, surat lengkap. Harga 200jt nego. Minat? WA: 0856-7890-1234"),
        Ad(details: "Jual Toyota Fortuner 2019, diesel, putih, full orisinil, siap touring! Hubungi: 0821-5678-9012"),
        Ad(details: "Butuh mobil keluarga? Toyota Innova 2017, bensin, rawatan dealer, harga miring! WA: 0813-2468-1357"),
        Ad(details: "Toyota Agya 2021, irit BBM, city car nyaman, DP 10jt bisa bawa pulang! Cek unit di Jaksel. Call: 0819-5678-2345"),
        Ad(details: "Dijual cepat! Toyota Avanza 2018, tangan pertama, pajak panjang, siap pakai. Harga nego. Hub: 0812-3456-7890"),
        Ad(details: "Toyota Yaris 2020, KM rendah, kondisi mulus, surat lengkap. Harga 200jt nego. Minat? WA: 0856-7890-1234"),
    ]
    
    var body: some View {
        NavigationView{
               List(ads) { ad in
                   Text(ad.details)
                       .font(.headline) // Thicker font for readability
                       .padding(5)
               }
               .background(Color(UIColor.systemGray6)) // Newspaper-like background color
               .navigationBarTitle("Indonesia / Bali / Mobil Dijual / Toyota", displayMode: .inline)

               
           }
       }
   }




#Preview {
    ContentView()
}


//    Ad(details: "Toyota Agya 2021, irit BBM, city car nyaman, DP 10jt bisa bawa pulang! Cek unit di Jaksel. Call: 0819-5678-2345"),
//Ad(details: "Dijual cepat! Toyota Avanza 2018, tangan pertama, pajak panjang, siap pakai. Harga nego. Hub: 0812-3456-7890"),
