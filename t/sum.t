use Test::More;

# try to use the module (use_ok() only loads modules, not files)
BEGIN { use_ok 'My::List::Util' }

ok defined &My::List::Util::sum, 'sum() is defined';

# test good data, bad data, interface violations ...
is My::List::Util::sum( 1, 2, 3 ), 6, '1+2+3 = 6';
is My::List::Util::sum( 4, -9, 37, 6 ), 38, '4-9+37+6 = 38';
is My::List::Util::sum( 3.14, 2.2 ), 5.34, '3.14 = 5.34';
is My::List::Util::sum(), undef, 'No arguments returns undef';
is My::List::Util::sum(qw(a b)),     undef, 'All bad args gives undef';
is My::List::Util::sum(qw(a 4 b 5)), 9,     'Some good args works';

# We are not done not the code is perfect. This is a never-ending battle.

done_testing();
