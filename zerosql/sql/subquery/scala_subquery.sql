/* スカラ・サブクエリ（単一の値を返すサブクエリ） */
SELECT shohin_id, shohin_mei, hanbai_tanka
FROM Shohin
WHERE hanbai_tanka > (SELECT AVG(hanbai_tanka)
                      FROM Shohin)
;

/*
以下の部分がスカラ・サブクエリ

SELECT AVG(hanbai_tanka)
FROM Shohin
*/
