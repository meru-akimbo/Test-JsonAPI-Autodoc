#!perl

use strict;
use warnings;
use Test::More;

eval {
    require Test::Vars;
};
plan skip_all => "Test::Vars required for testing variables" if $@;

Test::Vars::all_vars_ok(
    ignore_vars => {
        '$guard' => 1,
        '$class' => 1,
        '$self'  => 1,
    }
);
