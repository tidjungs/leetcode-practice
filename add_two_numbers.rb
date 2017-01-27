# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def add_two_numbers(l1, l2)
    carry = 0
    ans = ListNode.new(0)
    node = ans
    while l1 or l2 or carry != 0
        val = (l1 ? l1.val : 0) + (l2 ? l2.val : 0) + carry
        carry = val / 10
        val %= 10
        next_node = ListNode.new(val)
        node.next = next_node
        node = next_node
        l1 = l1.next if l1 
        l2 = l2.next if l2

    end
    return ans.next
end