package ;

using Xsync;

class XTest {
    public static function main() {
        trace("Tracer!");
        Xsync.go(
            {
                var huh = "huh";
                foo(huh);
                huh;
            }
        );
        trace(
            {var thing = "blabla thing";
            thing;}
        );
    }
}