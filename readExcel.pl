#!perl
use strict;
use warnings;
use 5.010;
use Spreadsheet::Read qw(ReadData);
my $book = ReadData('C:\training\testing.xlsx');
my @row = Spreadsheet::Read::row($book->[1], 5);
for my $i (0 .. $#row) {
   say 'A' . ($i+1) . ' ' . ($row[$i] // '');
}