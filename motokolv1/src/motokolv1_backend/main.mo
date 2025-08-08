import Text "mo:base/Text";
import Iter "mo:base/Iter";
import RBTree "mo:base/RBTree";
import Array "mo:base/Array";

actor {
    var question: Text = "What is your favorite programming language?";

    public query func getQuestion(): async Text {
    question
    };
    var votes: RBTree.RBTree<Text, Nat> = RBTree.RBTree(Text.compare);

    public query func getVotes(): async [(Text, Nat)] {

        Iter.toArray(votes.entries())

    };


  }


