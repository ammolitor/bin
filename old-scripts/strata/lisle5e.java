/*
 * BeanShell script to Connect to Lisle labs 5E.
 */
device.spawnShell();

device.expect("$ ");
device.sendln("cu -l cua/a000 -b7 -e -s9600");

device.expect("Connected", 2000);
device.setEndOfLine("\r");
device.sendln("atdt 9,163022421673333");

device.expect("9600", 30000);
device.sendln("");

// Sometimes the switch isn't ready for login.  This switch
// doesn't return to login prompt when cu disconnects.  Could
// be us, could be them, but no time to find out why.  TTT
//
// I've seen this before, and it is a security issue on the switch.

try {
    device.expect("login:", 5000);
    device.sendln("strata");
} catch (strata.util.Timeout e) {
    device.sendEOF();
    device.expect("login:", 10000);
    device.sendln("strata");
}

device.expect("ssword:");
device.sendln("hello1");

device.expect("<");

// Poll here because we don't know how long the switch will
// take to answer, and we can't count on the banner being
// anything in particular.
device.pollEOL("\n< ", 500, 10000);

// After polling, drain off excess bytes if any.
device.drain(100);

// In a script, you can use drain to check for garbage bytes
// left on the line.
device.drain(100);
