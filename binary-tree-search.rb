class Node
    attr_accessor :value, :left, :right
    def initialize(value)
        @value = value
        @left = nil 
        @right = nil
    end
end

class BinarySearchTree
    attr_accessor :root
    
    def initialize(root_value)
        @root = Node.new(root_value)
    end

    def insert_node(current_node, new_node)
        if new_node.value <= current_node.value 
            if current_node.left.nil? 
                current_node.left = new_node 
            else 
                insert_node(current_node.left, new_node)
            end 
        else 
            if current_node.right.nil? 
                current_node.right = new_node 
            else 
                insert_node(current_node.right, new_node) 
            end 
        end 
    end

    def build_tree(array)
        @root = Node.new(array[0])

        array[1..-1].each do |value|
            new_node = Node.new(value)
            insert_node(@root, new_node)
        end
    end

    def breadth_first_search(value)
        queue = [self.root]

        while !queue.empty? do 
            queue << queue[0].left if !queue[0].left.nil?
            queue << queue[0].right if !queue[0].right.nil? 

            if queue[0].value == value 
                return queue[0]
            end

            queue.shift
        end 
        return nil
    end 

    def depth_first_search(value)
        stack = [self.root]

        while !stack.empty?
            node = stack[-1]
            stack.pop 
            if node.value == value 
                return node 
            else 
                stack << node.right unless node.right.nil?
                stack << node.left unless node.left.nil? 
            end

        end
        return nil 
    end


    def dfs_rec(current_node, value)
        # Here: Preorder: root left right 
        # (Other traversal order are: Inorder: left root right; Postorder: left right root)

        return if current_node.nil? # Base case
        if current_node.value == value 
            return current_node 
        end

        dfs_rec(current_node.left, value)
        dfs_rec(current_node.right, value)
    end
end

# Testing
bst = BinarySearchTree.new(0)
bst.build_tree([7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324])
bst.depth_first_search(23)