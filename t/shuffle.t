use Test::More;

BEGIN { use_ok 'My::List::Util' }

ok defined &My::List::Util::shuffle, 'shuffle() is defined';

{
    my @shuffled = My::List::Util::shuffle();
    is scalar @shuffled, 0, 'No args returns an empty list';
}

{
    my @input    = 1 .. 10;
    my @shuffled = My::List::Util::shuffle(@input);
    is scalar @input, scalar @shuffled, 'The output list is the same size';
    isnt "@input", "@shuffled", 'The output list differs from the input';
}

done_testing();
