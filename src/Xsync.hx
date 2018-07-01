package ;

class Xsync {
    public static macro function async() {
        return macro {trace("This comes from a macro!");}
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

class Goblock {
    var _subblocks: Array<(String) -> Null<Int>>;
}