package ;

using Xsync;

class XTest {
    public static function main() {
        trace("Tracer!");
        Xsync.go();
    }
}