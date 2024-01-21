-- UPDATE

/* テーブル内の全ての行を更新 */
UPDATE Shohin
SET torokubi = '2009-10-10'
;

/* 条件に一致した行を更新 */
UPDATE Shohin
SET hanbai_tanka = hanbai_tanka * 10
WHERE shohin_bunrui = 'キッチン用品'
;

/* 条件に一致した行の複数列を更新 */
UPDATE Shohin
SET hanbai_tanka = hanbai_tanka * 10,
    shiire_tanka = shiire_tanka / 2
WHERE shohin_bunrui = 'キッチン用品'
;

/*
Note:
UPDATE <table_name>
SET <列> = <値>[, <列> = <値>, ...]
WHERE <条件>
;
*/
