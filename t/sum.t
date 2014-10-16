use Test::More;

# try to use the module (use_ok() only loads modules, not files)
BEGIN { use_ok 'My::List::Util' }

ok defined &My::List::Util::sum, 'sum() is defined';

# test good data, bad data, interface violations ...
is sum( 1, 2, 3 ), 6, '1+2+3 = 6';
is sum( 4, -9, 37, 6 ), 38, '4-9+37+6 = 38';
is sum( 3.14, 2.2 ), 5.34, '3.14 = 5.34';
is sum(), undef, 'No arguments returns undef';
is sum(qw(a b)),     undef, 'All bad args gives undef';
is sum(qw(a 4 b 5)), 9,     'Some good args works';

# We are not done not the code is perfect. This is a never-ending battle.

done_testing();
