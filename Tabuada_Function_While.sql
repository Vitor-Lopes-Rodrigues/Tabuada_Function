CREATE OR REPLACE FUNCTION tabuada(numero INTEGER) RETURNS SETOF VARCHAR AS $$
	DECLARE 
		multiplicador INTEGER DEFAULT 1;
	BEGIN
	--Condição de saida Loop já no inicio(enquanto)
		WHILE multiplicador < 10 LOOP
			RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
			multiplicador := multiplicador + 1;
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
