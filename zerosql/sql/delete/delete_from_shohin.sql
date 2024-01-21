-- DELETE

/* テーブル内の行を全て削除 */
DELETE FROM Shohin;

/* 条件に一致した行を削除 */
DELETE FROM Shohin
WHERE hanbai_tanka >= 4000
;

/*
Note:
DELETE FROM <table_name>
WHERE <条件>;
*/
