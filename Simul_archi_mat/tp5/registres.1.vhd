-------------------------------------------------------------------------------
-- Registyers bank featuring bthe bypass mechanism
-- THIEBOLT Francois
-------------------------------------------------------------------------------

--------------------------------------------------------------
-- Par defaut 32 registres de 32 bits avec lecture double port
--------------------------------------------------------------

-- Definition des librairies
library IEEE;

-- Definition des portee d'utilisation
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

-- Definition de l'entite
entity registres is

	-- definition des parametres generiques
	generic	(
		-- largeur du bus de donnees par defaut
		DBUS_WIDTH	: integer := 32; -- registre de 32 bits par defaut

		-- largeur du bus adr pour acces registre soit 32 (2**5) par defaut
		ABUS_WIDTH	: integer := 5 );

	-- definition des entrees/sorties
	port 	(
		-- signaux de controle du Banc de registres
		CLK			: in std_logic;
		W,RST			: in std_logic; -- actifs a l'etat bas

		-- bus d'adresse et donnees
		ADR_A,ADR_B	: in std_logic_vector(ABUS_WIDTH-1 downto 0);
		ADR_W			: in std_logic_vector(ABUS_WIDTH-1 downto 0);
		D				: in std_logic_vector(DBUS_WIDTH-1 downto 0);

		-- Ports de sortie
		QA,QB			: out std_logic_vector(DBUS_WIDTH-1 downto 0) );

end registres;


-------------------------------------------------------------------------------
-- REGISTRES architecture
-------------------------------------------------------------------------------

-- Definition de l'architecture du banc de registres
architecture behavior of registres is

	-- definitions de types (index type default is integer)
	type FILE_REGS is array (0 to (2**ABUS_WIDTH)-1) of std_logic_vector (DBUS_WIDTH-1 downto 0);

	-- definition des ressources internes
	signal REGS : FILE_REGS; -- le banc de registres
	signal D2QA	: boolean; -- si acces simultane R & W sur le meme registre ==> QA <= D;
	signal D2QB	: boolean; -- si acces simultane R & W sur le meme registre ==> QB <= D;

begin
--------------------------------------------
-- Affectations dans le domaine combinatoire
--

---------------------------------
-- test si acces simultanes
D2QA <= (W='0' and ADR_A=ADR_W);
            
D2QB <= (W='0' and ADR_B=ADR_W); 

-------------------
-- Process P_ReadQA


QA<=(others=> 'X') when is_X(ADR_A) else
        (others =>'0') when ADR_A=CONV_STD_LOGIC_VECTOR(0,ABUS_WIDTH) else
            REGS(CONV_INTEGER(ADR_A)) when D2QA=false else
                D;

-------------------
-- Process P_ReadQB

QB<=(others=> 'X') when is_X(ADR_B) else
        (others =>'0') when ADR_B=CONV_STD_LOGIC_VECTOR(0,ABUS_WIDTH) else
            REGS(CONV_INTEGER(ADR_B)) when D2QB=false else          
                D;
------------------
-- Process P_WRITE
P_WRITE: process(CLK)
begin
	-- test du front actif d'horloge
	if rising_edge(CLK) then
		-- test du reset
		if RST='0' then
			REGS <= (others => conv_std_logic_vector(0,DBUS_WIDTH));
		else
			-- test si ecriture dans le registre
			if ((W='0') and ADR_W /= CONV_STD_LOGIC_VECTOR(0,ABUS_WIDTH)) then
			REGS(conv_integer(ADR_W)) <= D;
			end if;
		end if;
	end if;

end process P_WRITE;

end behavior;