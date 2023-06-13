DROP FUNCTION tabuada;
CREATE OR REPLACE FUNCTION tabuada(numero INTEGER) RETURNS SETOF VARCHAR AS $$
	DECLARE 
		multiplicador INTEGER DEFAULT 1;
	BEGIN
		-- Multiplicador tem que começar com 1, e ir até o < 10
		-- numero * multiplicador
		-- multiplicador := multiplicador + 1
		LOOP
			RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
			multiplicador := multiplicador + 1;
			EXIT WHEN multiplicador = 10;
		END LOOP;
	END
$$ LANGUAGE plpgsql;

SElECT tabuada (1);
SElECT tabuada (2);
SElECT tabuada (3);
SElECT tabuada (4);
SElECT tabuada (5);
SElECT tabuada (6);
SElECT tabuada (7);
SElECT tabuada (8);
SElECT tabuada (9);
SElECT tabuada (10);