#!/usr/bin/perl6

class BinarySearchTree {
    my class TreeNode {
        has int $.val;
        has TreeNode $.left is rw;
        has TreeNode $.right is rw;
    }
} 