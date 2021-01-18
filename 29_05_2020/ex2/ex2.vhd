library ieee;
use ieee.std_logic_1164.all; 

 

entity ex2 is
port(
    Clk         : in std_logic;
    max         : in std_logic_vector (2 downto 0);
    outMoore : out std_logic_vector (2 downto 0) 
    
    -- 101 um estado
    -- 111 dois estados
    -- 001 tres estados
);
end ex2;

 

architecture arch of ex2 is 
    
    type state_type is (a, b, c);
    signal PresentState, NextState: state_type;
    
begin

 

    Clock: process(Clk)
   begin
        if (Clk'event and Clk = '1') then
            PresentState <= NextState;
        else
            null;
      end if; 
    end process;
    
    mooreMachine: process(PresentState)
    begin
    
        NextState <= PresentState;
        
        case PresentState is
        
            when a =>
                outMoore <= "101";
                if max = "101" then
                    NextState <= a;
                else
                    NextState <= b;
                end if;
                
            when b =>
                outMoore <= "111";
                if max = "111" then
                    NextState <= b;
                else
                    NextState <= c;
                end if;
                
            when c =>
                outMoore <= "001";
                if max = "001" then
                    NextState <= c;
                else
                    NextState <= a;
                end if;
            
            when others => null;
                    
        end case; 
    end process;
end arch; 