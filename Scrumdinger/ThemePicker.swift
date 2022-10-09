//
//  ThemePicker.swift
//  Scrumdinger
//
//  Created by Steffen Suess on 09.10.22.
//

import SwiftUI

struct ThemePicker: View {
    @Binding var selection: Theme
    
    var body: some View {
        // TODO: Update with Xcode 14.1 to something like this:
        //        if #available(iOS 16.0, *) {
        //            Picker("Selection", selection: $selectedValue) {
        //                ForEach(counts, id: \.self) {
        //                    Text($0)
        //                }
        //            }
        //            .pickerStyle(.navigationLink)
        //        } else {
        //            Picker("Selection", selection: $selectedValue) {
        //                ForEach(counts, id: \.self) {
        //                    Text($0)
        //                }
        //            }
        //        }
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
    }
}

struct ThemePicker_Previews: PreviewProvider {
    static var previews: some View {
        ThemePicker(selection: .constant(.periwinkle))
    }
}
