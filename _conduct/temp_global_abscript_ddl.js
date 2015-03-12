var system    = require('system');
system.stdout = system.stderr; 
var console   = require('console'); 
var fs        = require('fs');

if (system.args.length != 2) 
{
    console.log('Only two arguments allowed');
    system.exit(0);
}

if (fs.size(system.args[0]) != 0) {
    try {
        require(system.args[0], 'ddl');
    } catch(e) {
        console.writeln(e);
        system.exit(0);        
    }
}

try {
    console.dir(require(system.args[1], 'ddl'));
} catch(e) {
    console.writeln(e);
    system.exit(0);
}

system.exit(0);

