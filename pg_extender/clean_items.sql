DROP FUNCTION IF EXISTS cleanItems();
CREATE OR REPLACE FUNCTION cleanItems()
RETURNS void AS
$BODY$
BEGIN
    EXECUTE 'TRUNCATE TABLE Temp_Trajectory;';
    EXECUTE 'TRUNCATE TABLE Temp_Bbox;';
    EXECUTE 'TRUNCATE TABLE Main_Trajectory CASCADE;';
    EXECUTE 'TRUNCATE TABLE Main_Bbox CASCADE;';
    EXECUTE 'TRUNCATE TABLE Item_Meta;';
    EXECUTE 'DROP TABLE IF EXISTS Min_Join_Pair CASCADE;';
    EXECUTE 'DROP VIEW IF EXISTS all_pair_of_distance CASCADE;';
    EXECUTE 'DROP VIEW IF EXISTS all_time_intersect_view CASCADE;';
    EXECUTE 'DROP VIEW IF EXISTS join_pair CASCADE;';
END;
$BODY$
LANGUAGE 'plpgsql';