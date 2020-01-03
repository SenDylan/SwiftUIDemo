//
//  PageView.swift
//  SwiftUIDemo
//
//  Created by sdy on 2019/10/12.
//  Copyright © 2019 JDJR. All rights reserved.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var viewControllers: [UIHostingController<Page>]
    
    init(_ views: [Page]) {
        self.viewControllers = views.map { UIHostingController(rootView: $0) }
    }
    
    var body: some View {
        PageViewController(controllers: viewControllers)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(features.map{$0.featureImage})
    }
}
