--32 bits parallel unsigned multiply;

library ieee;
	use ieee.std_logic_1164.all;
	use ieee.std_logic_unsigned.all;
	use ieee.std_logic_arith.all;

entity uMultiply is
	port(enUMultiply	: in std_logic;
		 inUMultiplyA	: in std_logic_vector(31 downto 0);
		 inUMultiplyB	: in std_logic_vector(31 downto 0);
		 uMultiplyOut	: out std_logic_vector(63 downto 0));
end entity uMultiply;

architecture action of uMultiply is
--	variable num0: std_logic_vector(63 downto 0);
--	variable num1: std_logic_vector(63 downto 0);
--	variable num2: std_logic_vector(63 downto 0);
--	variable num3: std_logic_vector(63 downto 0);
--	variable num4: std_logic_vector(63 downto 0);
--	variable num5: std_logic_vector(63 downto 0);
--	variable num6: std_logic_vector(63 downto 0);
--	variable num7: std_logic_vector(63 downto 0);
--	variable num8: std_logic_vector(63 downto 0);
--	variable num9: std_logic_vector(63 downto 0);
--	variable num10: std_logic_vector(63 downto 0);
--	variable num11: std_logic_vector(63 downto 0);
--	variable num12: std_logic_vector(63 downto 0);
--	variable num13: std_logic_vector(63 downto 0);
--	variable num14: std_logic_vector(63 downto 0);
--	variable num15: std_logic_vector(63 downto 0);
--	variable num16: std_logic_vector(63 downto 0);
--	variable num17: std_logic_vector(63 downto 0);
--	variable num18: std_logic_vector(63 downto 0);
--	variable num19: std_logic_vector(63 downto 0);
--	variable num20: std_logic_vector(63 downto 0);
--	variable num21: std_logic_vector(63 downto 0);
--	variable num22: std_logic_vector(63 downto 0);
--	variable num23: std_logic_vector(63 downto 0);
--	variable num24: std_logic_vector(63 downto 0);
--	variable num25: std_logic_vector(63 downto 0);
--	variable num26: std_logic_vector(63 downto 0);
--	variable num27: std_logic_vector(63 downto 0);
--	variable num28: std_logic_vector(63 downto 0);
--	variable num29: std_logic_vector(63 downto 0);
--	variable num30: std_logic_vector(63 downto 0);
--	variable num31: std_logic_vector(63 downto 0);
begin
	ps1: process(enUMultiply)
		
			 variable num0: std_logic_vector(63 downto 0);
			 variable num1: std_logic_vector(63 downto 0);
			 variable num2: std_logic_vector(63 downto 0);
			 variable num3: std_logic_vector(63 downto 0);
			 variable num4: std_logic_vector(63 downto 0);
			 variable num5: std_logic_vector(63 downto 0);
			 variable num6: std_logic_vector(63 downto 0);
			 variable num7: std_logic_vector(63 downto 0);
			 variable num8: std_logic_vector(63 downto 0);
			 variable num9: std_logic_vector(63 downto 0);
			 variable num10: std_logic_vector(63 downto 0);
			 variable num11: std_logic_vector(63 downto 0);
			 variable num12: std_logic_vector(63 downto 0);
			 variable num13: std_logic_vector(63 downto 0);
			 variable num14: std_logic_vector(63 downto 0);
			 variable num15: std_logic_vector(63 downto 0);
			 variable num16: std_logic_vector(63 downto 0);
			 variable num17: std_logic_vector(63 downto 0);
			 variable num18: std_logic_vector(63 downto 0);
			 variable num19: std_logic_vector(63 downto 0);
			 variable num20: std_logic_vector(63 downto 0);
			 variable num21: std_logic_vector(63 downto 0);
			 variable num22: std_logic_vector(63 downto 0);
			 variable num23: std_logic_vector(63 downto 0);
			 variable num24: std_logic_vector(63 downto 0);
			 variable num25: std_logic_vector(63 downto 0);
			 variable num26: std_logic_vector(63 downto 0);
			 variable num27: std_logic_vector(63 downto 0);
			 variable num28: std_logic_vector(63 downto 0);
			 variable num29: std_logic_vector(63 downto 0);
			 variable num30: std_logic_vector(63 downto 0);
			 variable num31: std_logic_vector(63 downto 0);
		begin 
			 num0 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num1 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num2 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num3 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num4 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num5 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num6 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num7 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num8 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num9 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num10 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num11 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num12 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num13 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num14 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num15 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num16 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num17 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num18 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num19 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num20 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num21 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num22 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num23 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num24 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num25 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num26 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num27 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num28 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num29 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num30 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 num31 	:= "0000000000000000000000000000000000000000000000000000000000000000";
			 
			 if (enUMultiply = '1') then
				 lp1: for i in 0 to 31 loop
						  num0(i) := inUMultiplyB(0) and inUMultiplyA(i);
					  end loop lp1;
					  
				 lp2: for i in 0 to 31 loop
						  num1(i+1) := inUMultiplyB(1) and inUMultiplyA(i);
				      end loop lp2;
				      
				 lp3: for i in 0 to 31 loop
						 num2(i+2) := inUMultiplyB(2) and inUMultiplyA(i);
					  end loop lp3;
				 
				 lp4: for i in 0 to 31 loop
						 num3(i+3) := inUMultiplyB(3) and inUMultiplyA(i);
					  end loop lp4;
				
				 lp5: for i in 0 to 31 loop
						 num4(i+4) := inUMultiplyB(4) and inUMultiplyA(i);
					  end loop lp5;
				 lp6: for i in 0 to 31 loop
						 num5(i+5) := inUMultiplyB(5) and inUMultiplyA(i);
					  end loop lp6;
				 lp7: for i in 0 to 31 loop
						 num6(i+6) := inUMultiplyB(6) and inUMultiplyA(i);
					  end loop lp7;
				 lp8: for i in 0 to 31 loop
						 num7(i+7) := inUMultiplyB(7) and inUMultiplyA(i);
					  end loop lp8;
				 lp9: for i in 0 to 31 loop
						 num8(i+8) := inUMultiplyB(8) and inUMultiplyA(i);
					  end loop lp9;
				 lp10: for i in 0 to 31 loop
						 num9(i+9) := inUMultiplyB(9) and inUMultiplyA(i);
					  end loop lp10;
				 lp11: for i in 0 to 31 loop
						 num10(i+10) := inUMultiplyB(10) and inUMultiplyA(i);
					  end loop lp11;
				 lp12: for i in 0 to 31 loop
						 num11(i+11) := inUMultiplyB(11) and inUMultiplyA(i);
					  end loop lp12;
				 lp13: for i in 0 to 31 loop
						 num12(i+12) := inUMultiplyB(12) and inUMultiplyA(i);
					  end loop lp13;
				 lp14: for i in 0 to 31 loop
						 num13(i+13) := inUMultiplyB(13) and inUMultiplyA(i);
					  end loop lp14;
				 lp15: for i in 0 to 31 loop
						 num14(i+14) := inUMultiplyB(14) and inUMultiplyA(i);
					  end loop lp15;
				 lp16: for i in 0 to 31 loop
						 num15(i+15) := inUMultiplyB(15) and inUMultiplyA(i);
					  end loop lp16;
				 lp17: for i in 0 to 31 loop
						 num16(i+16) := inUMultiplyB(16) and inUMultiplyA(i);
					  end loop lp17;
				 lp18: for i in 0 to 31 loop
						 num17(i+17) := inUMultiplyB(17) and inUMultiplyA(i);
					  end loop lp18;
				 lp19: for i in 0 to 31 loop
						 num18(i+18) := inUMultiplyB(18) and inUMultiplyA(i);
					  end loop lp19;
				 lp20: for i in 0 to 31 loop
					 	 num19(i+19) := inUMultiplyB(19) and inUMultiplyA(i);
					  end loop lp20;
				 lp21: for i in 0 to 31 loop
						 num20(i+20) := inUMultiplyB(20) and inUMultiplyA(i);
					  end loop lp21;
				 lp22: for i in 0 to 31 loop
				 		 num21(i+21) := inUMultiplyB(21) and inUMultiplyA(i);
					  end loop lp22;
				 lp23: for i in 0 to 31 loop
						 num22(i+22) := inUMultiplyB(22) and inUMultiplyA(i);
					  end loop lp23;
				 lp24: for i in 0 to 31 loop
						 num23(i+23) := inUMultiplyB(23) and inUMultiplyA(i);
					  end loop lp24;
				 lp25: for i in 0 to 31 loop
						 num24(i+24) := inUMultiplyB(24) and inUMultiplyA(i);
					  end loop lp25;
					 
				 lp26: for i in 0 to 31 loop
						 num25(i+25) := inUMultiplyB(25) and inUMultiplyA(i);
					  end loop lp26;
				 lp27: for i in 0 to 31 loop
						 num26(i+26) := inUMultiplyB(26) and inUMultiplyA(i);
					  end loop lp27;
				 lp28: for i in 0 to 31 loop
						 num27(i+27) := inUMultiplyB(27) and inUMultiplyA(i);
					  end loop lp28;
				 lp29: for i in 0 to 31 loop
						 num28(i+28) := inUMultiplyB(28) and inUMultiplyA(i);
					  end loop lp29;
				 lp30: for i in 0 to 31 loop
						 num29(i+29) := inUMultiplyB(29) and inUMultiplyA(i);
					  end loop lp30;
				 lp31: for i in 0 to 31 loop
						 num30(i+30) := inUMultiplyB(30) and inUMultiplyA(i);
					  end loop lp31;
				 lp32: for i in 0 to 31 loop
						 num31(i+31) := inUMultiplyB(31) and inUMultiplyA(i);
					  end loop lp32;
				 
				 uMultiplyOut <= num0+num1+num2+num3+num4+num5+num6+num7+num8+num9+num10+num11+num12+num13+num14+num15+num16+num17+num18+num19+num20+num21+num22+num23+num24+num25+num26+num27+num28+num29+num30+num31;
			 end if;
		 end process ps1;
end architecture action;
