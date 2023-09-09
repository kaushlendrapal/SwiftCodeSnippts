//
//  File.swift
//  
//
//  Created by Kaushlendra Pal on 09/09/23.
//

import Foundation

class SwiftCodeSnippts {
    
    func verifyBinaryTreePrint() {
        var bst = BinaryTree()
        bst.insert(value: 50)
        bst.insert(value: 40)
        bst.insert(value: 30)
        bst.insert(value: 35)
        bst.insert(value: 31)
        bst.insert(value: 55)
        bst.insert(value: 60)
        bst.insert(value: 70)
        bst.insert(value: 71)
        bst.insert(value: 73)
        bst.insert(value: 45)
        bst.insert(value: 25)
        bst.printTree(bst.root)
        bst.printDiagram(of: bst.root, "", "", "")
    }
    
}
