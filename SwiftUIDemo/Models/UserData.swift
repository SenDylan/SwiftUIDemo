//
//  UserData.swift
//  SwiftUIDemo
//
//  Created by sdy on 2019/10/10.
//  Copyright © 2019 JDJR. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
