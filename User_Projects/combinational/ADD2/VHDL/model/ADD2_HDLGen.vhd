-- Header Section
-- Component Name : ADD2
-- Title          : 2-bit binary adder

-- Description
-- 2-bit binary adder
-- 
-- -- IEEE.numeric_std library + function used in this model
-- which converts an 
-- -- unsigned vector to type std_logic_vector, the type of the signal 
-- sum

-- Author(s)      : Fearghal Morgan
-- Company        : University of Galway
-- Email          : fearghal.morgan@universityofgalway.ie
-- Date           : 29/03/2023

-- entity signal dictionary
-- addIn1	2-bit input
-- addIn0	2-bit input
-- sum	2-bit output

-- internal signal dictionary
-- None

-- library declarations
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


-- entity declaration
entity ADD2 is 
Port(
	addIn1 : in std_logic_vector(1 downto 0);
	addIn0 : in std_logic_vector(1 downto 0);
	sum : out std_logic_vector(1 downto 0)
);
end entity ADD2;

architecture Combinational of ADD2 is
-- Internal signal declarations
-- None

begin

sum_c: sum <= addIn1; -- Complete the concurrent statement if required

end Combinational;