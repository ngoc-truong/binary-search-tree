# Binary Search Trees
In this project binary search trees are implemented with ruby. This project is part of the lesson "Data Structures and Algorithms" from [the Odin Project](https://www.theodinproject.com/courses/ruby-programming/lessons/data-structures-and-algorithms), a self-paced curriculum to learn full-stack web development. The goal of this lesson is to get familiar with binary search trees, breadth-first-traversal, depth-first-traversal and linked lists. 

## Goals of the lesson
The goals of the lesson was to create a method to build a binary tree from arrays and using the breadth_first_search and the depth_first_method to search the tree for a value. The depth_first_method should also be implemented recursively.

## Tasks
1. Build a class Node. It should have a value that it stores and also links to its parent and children (if they exist). Build getters and setters for it (e.g. parent node, child node(s)).
2. Write a method build_tree which takes an array of data (e.g. [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]) and turns it into a binary tree full of Node objects appropriately placed. Start by assuming the array you get is sorted.
3. Now refactor your build_tree to handle data that isn’t presorted and cannot be easily sorted prior to building the tree. You’ll need to figure out how to add a node for each of the possible cases (e.g. if it’s a leaf versus in the middle somewhere).
4. Write a simple script that runs build_tree so you can test it out.
5. Build a method breadth_first_search which takes a target value and returns the node at which it is located using the breadth first search technique. Tip: You will want to use an array acting as a queue to keep track of all the child nodes that you have yet to search and to add new ones to the list (as you saw in the video). If the target node value is not located, return nil.
6. Build a method depth_first_search which returns the node at which the target value is located using the depth first search technique. Use an array acting as a stack to do this.
7. Next, build a new method dfs_rec which runs a depth first search as before but this time, instead of using a stack, make this method recursive.