LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Pojeto IS
	PORT(ender: IN INTEGER RANGE 0 TO 7; 
	word: OUT BIT_VECTOR(0 TO 3));
END ENTITY;

ARCHITECTURE Codigo OF Pojeto IS
	TYPE rom IS ARRAY (0 TO 7) OF BIT_VECTOR(0 TO 3);
	CONSTANT minha_rom: rom :=("0000","0001","0010","0011","0100","0101","0110","0111");
BEGIN
	word <= minha_rom(ender);
END Codigo;