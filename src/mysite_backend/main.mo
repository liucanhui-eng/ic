import Nat "mo:base/Nat";
actor {


  func feb(num:Nat):Nat{
    if (num<=1){
      1
    }else{
      feb(num-1)+feb(num-2)
    }
  };

  public query func feibo(num : Nat):async Nat{
    feb(num)
  };

  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };
};
