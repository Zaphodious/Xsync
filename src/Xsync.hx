package ;

import haxe.macro.Expr;

class Xsync {
    public static macro function async() {
        return macro {trace("This comes from a macro!");}
    }

    public static macro function go(expr: Expr) {
        return macro {
            X_ximp.__go_imp(
                new Goblock()
            );
        }
    }

    
}

class X_ximp {
    public static function __go_imp<T>(goblock: Goblock<T>): Chan<T> {
        return new Chan();
    }
}

class Chan<T> {
    var _queueList: List<T> = new List();

    public function new() {
    }

    public function put(thing: T) : Chan<T> {

        return this;
    }

    public function toString() return _queueList.toString;

}

class Goblock<T> {
    var _nextCall: Null<(Goblock<T>) -> Any>;
    var _retVal: Null<T>;
    var _waitingOn: Chan<T>;
    var _waitingToTake: Bool;

    public function new() {

    }

}