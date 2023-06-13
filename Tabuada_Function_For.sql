CREATE OR REPLACE FUNCTION tabuada(numero INTEGER) RETURNS SETOF VARCHAR AS $$ 
	BEGIN
	--Loop de sequencia de dados atravez da notacao "1..9"
	FOR multiplicador IN 1..9 LOOP
			RETURN NEXT numero || ' x ' || multiplicador || ' = ' || numero * multiplicador;
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

