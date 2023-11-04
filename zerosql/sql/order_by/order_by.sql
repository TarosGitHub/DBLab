-- ORDER BY

SELECT
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
FROM
    Shohin
ORDER BY
    hanbai_tanka;

/*
Note:
ORDER BY句で特に指定がなければ、昇順に並べ替える。
ASCキーワードを指定しても同じ。
*/

/*
Note:
ORDER BY句に指定する列のことを「ソートキー」と呼ぶ。
*/

/*
降順に並べ替える。
DESCキーワード。
*/

SELECT
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
FROM
    Shohin
ORDER BY
    hanbai_tanka DESC;

/*
Note:
ASC, DESCキーワード は列単位で指定する。
ある列は昇順、別の列は降順というふうに指定することも可能。
*/

/*
複数のソートキーを指定。
*/

SELECT
    shohin_id,
    shohin_mei,
    hanbai_tanka,
    shiire_tanka
FROM
    Shohin
ORDER BY
    hanbai_tanka, shohin_id;

/*
Note:
ソートキーにNULLが含まれている場合は先頭か末尾にまとめられる。
*/

/*
Note:
ORDER BY句にはSELECT句でつけた別名を使用することができる。
*/

SELECT
    shohin_bunrui,
    COUNT(*)
FROM
    Shohin
GROUP BY
    shohin_bunrui
ORDER BY
    COUNT(*);

/*
Note:
ORDER BY句にはSELECT句に指定していない列も指定できる。
また、集約関数も指定できる。
*/

/*
句の記述順序:
SELECT -> FROM -> WHERE -> GROUP BY -> HAVING -> ORDER BY

SQL文の内部的な実行順序:
FROM -> WHERE -> GROUP BY -> HAVING -> SELECT -> ORDER BY
*/
