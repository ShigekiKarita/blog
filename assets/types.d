import std.stdio;

import std.meta : AliasSeq;
import std.traits : Parameters;
alias Args(alias F) = AliasSeq!(Parameters!F);

unittest {
    void foo(int, double) {}
    writeln(Args!foo.stringof); // (int, double)
}

unittest {
    enum A {a = 1;}
    writeln(A.a.stringof);
}

