#!/usr/bin/perl

@fruits = qw[ orange apple jackfruit ];

pop @fruits;
@fruit_basket = @fruits;
print @fruits ;
print "@fruit_basketi \n";

@basket = qw[phone vicks bottle mouse headphone];
push(@basket, spoon);
@tools = qw[spanner screw nail];
push (@basket, @tools);
print "@basket \n";
