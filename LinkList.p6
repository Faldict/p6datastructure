#!/usr/bin/env perl6

class LinkList {
    # define node type
    my class LinkNode {
        has Int $.val;
        has LinkNode $.next is rw;
    }

    # define attributes
    has LinkNode $!head;
    has Int $.size;     # the type of size need to be modified

    # initialize
    submethod BUILDALL(|) {
        $!head = LinkNode.new(val => 0, next => Nil);
        $!size = 0;
        self
    }

    # insert a node
    method insert($x) {
        my $p = $!head;
        while ($p.next) $p = $p.next;
        $p.next = LinkNode.new(val => $x, next => Nil);
        $!size++;
    }
}

=begin pod

=head1 Single Linked List

This is the implemention of single linked list in perl6.
It supports `new`, `insert` operations. More work
will be finished later.

=end pod 