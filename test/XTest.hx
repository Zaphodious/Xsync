package ;

using Xsync;

class XTest {
    public static function main() {
        trace("Tracer!");
        Xsync.async();
        foo();
        trace(new Chan());
    }

    @async public static function foo() {
        trace ("thing");
    }
}