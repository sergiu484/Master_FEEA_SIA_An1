SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER;
    v_inte   PLS_INTEGER;
    v_rez    VARCHAR2(250);
    v_rez2    VARCHAR2(250);
    v_suma   PLS_INTEGER;
    v_text   VARCHAR2(250);
    v_iterator PLS_INTEGER := 0;
    v_iterator2 PLS_INTEGER := 0;
BEGIN
    DECLARE 
        v_nume   VARCHAR2(10);
    BEGIN
        SELECT nume
        INTO v_nume
        FROM studenti
        WHERE nr_matricol = '129' OR nr_matricol = '130';
        
        DBMS_OUTPUT.PUT_LINE(v_nume);
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('studentul nu exista');
        WHEN TOO_MANY_ROWS THEN
            DBMS_OUTPUT.PUT_LINE('exista mai multi studenti');        
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('exceptie');
    END;
    

    v_inte := 5;

    IF v_inte > 2 THEN
    
        DBMS_OUTPUT.PUT_LINE('Hello world!');
        DBMS_OUTPUT.PUT_LINE('Hello world!');
    ELSIF v_inte > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Else1!');    
    ELSE
        DBMS_OUTPUT.PUT_LINE('Else2!');   
    END IF;
    
    SELECT
    CASE WHEN v_inte = 0 THEN
        '0'
    WHEN v_inte = 1 THEN
        '1'
    ELSE ' alta valoare'
    END
    INTO v_rez
    FROM DUAL;
    
    DBMS_OUTPUT.PUT_LINE('v_rez:' || v_rez);
    
    SELECT
    CASE v_inte WHEN 0 THEN
        '0'
    WHEN 1 THEN
        '1'
    ELSE ' alta valoare'
    END
    INTO v_rez2
    FROM DUAL;
    
    DBMS_OUTPUT.PUT_LINE('v_rez2:' || v_rez2);
    
    v_suma := 0;
    
    FOR i IN 1 .. 5
    LOOP    
        v_suma := v_suma + i;
        v_text := CONCAT('suma', TO_CHAR(v_suma));
        DBMS_OUTPUT.PUT_LINE('suma:' || TO_CHAR(v_suma));
        DBMS_OUTPUT.PUT_LINE(i);
    END LOOP;
    
    FOR v_test IN (SELECT nr_matricol, nume || ' ' || prenume AS numeprenume, an FROM studenti ORDER BY nr_matricol)
    LOOP
        DBMS_OUTPUT.PUT_LINE('Studentul ' || v_test.numeprenume || ' are numarul matricol ' 
            || v_test.nr_matricol || ' si este in anul ' || TO_CHAR(v_test.an));
    END LOOP;
    
    WHILE v_iterator < 5
    LOOP
        DBMS_OUTPUT.PUT_LINE('valoare iterator ' || TO_CHAR(v_iterator));
        v_iterator := v_iterator + 1;
        EXIT;
    END LOOP;
    
    LOOP
        DBMS_OUTPUT.PUT_LINE('valoare iterator2 ' || TO_CHAR(v_iterator2));
        v_iterator2 := v_iterator2 + 1;
        
        IF v_iterator2 > 4 THEN
            EXIT;
        END IF;
    END LOOP;
    
    
EXCEPTION 
    WHEN OTHERS THEN 
        DBMS_OUTPUT.PUT_LINE('o exceptie');
END;


