# perl 5
#
# GoldenBigMath_Exceptions.t
#
# Test of GoldenBigMath Execptions
#
# Ralf Peine, Mon Aug 18 17:07:23 2014

use strict;
use warnings;

$|=1;

use Test::More;       # see done_testing()
use Test::Exception;  # to handle exceptions

use Math::GoldenBigMath;

TestExceptions();

# --- TestExceptions only if Test::Exception installed ---------------------------------------------------------------
sub TestExceptions {

	diag "--- Exception Tests ---------------------------------------------------------------";

	# --- Formatting Tests ---------------------------------------------------------
	#
	
	dies_ok { new Math::GoldenBigMath('001234567890.000010000e3001')->MoveDecimalPointToRight('');    } "MoveDecimalPointToRight('')";
	dies_ok { new Math::GoldenBigMath('001234567890.000010000e3001')->MoveDecimalPointToRight('0');   } "MoveDecimalPointToRight('0')";
	dies_ok { new Math::GoldenBigMath('001234567890.000010000e3001')->MoveDecimalPointToRight('-1');  } "MoveDecimalPointToRight('-1')";
	dies_ok { new Math::GoldenBigMath('001234567890.000010000e3001')->MoveDecimalPointToRight('bla'); } "MoveDecimalPointToRight('bla')";
	
	# --- Calc Tests ---------------------------------------------------------------
	#
	
	# --- Addition ---
	
	# --- Subtraction ---
	
	# --- to test the internal method creating a multiplication table
	
	dies_ok { Math::GoldenBigMath::buildMultiplicationTableAsString('');   } " * table ''  ";
	dies_ok { Math::GoldenBigMath::buildMultiplicationTableAsString(' 0'); } " * table ' 0'";
	dies_ok { Math::GoldenBigMath::buildMultiplicationTableAsString('0 '); } " * table '0 '";
	dies_ok { Math::GoldenBigMath::buildMultiplicationTableAsString('+0'); } " * table '+0'";
	dies_ok { Math::GoldenBigMath::buildMultiplicationTableAsString('a');  } " * table 'a' ";
	
	# --- Test Multiplication ---
	
	# --- Test operators + - * / < <= > >= <=>
}
