//
//  File.swift
//  
//
//  Created by Kaushlendra Pal on 09/09/23.
//

import Foundation


/// Definition for a binary tree node.

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    public init(_ val: Int,
                _ left: TreeNode?,
                _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

extension TreeNode {
    
    func preOrderTraversal(_ closure: (TreeNode) -> Void) {
        closure(self)
        self.left?.preOrderTraversal(closure)
        self.right?.preOrderTraversal(closure)
    }
    
    func inOrderTraversal(_ closure: (TreeNode) -> Void) {
        self.left?.preOrderTraversal(closure)
        closure(self)
        self.right?.preOrderTraversal(closure)
    }
    
    func postOrderTraversal(_ closure: (TreeNode) -> Void) {
        self.left?.preOrderTraversal(closure)
        self.right?.preOrderTraversal(closure)
        closure(self)
    }
    
}

 




/// Defination for Binary Tree

public class BinaryTree {
    public var root: TreeNode?
    
    public init() {
        self.root = nil
    }
    
    public init(_ val: Int) {
        self.root = TreeNode(val)
    }
    
    func insert(value: Int) {
        root = insert(value: value, from: root)
    }
    
    private func insert(value: Int, from node: TreeNode?) -> TreeNode? {
        guard let _node = node else {
            return TreeNode(value)
        }
        if value < _node.val {
            _node.left = insert(value: value, from: _node.left)
        } else {
            _node.right = insert(value: value, from: _node.right)
        }
        
        return _node
    }
}
