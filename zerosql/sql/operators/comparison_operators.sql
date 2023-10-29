-- 比較演算子

SELECT
    shohin_mei,
    hanbai_tanka AS hanbai_tanka_equal_500
FROM Shohin
WHERE hanbai_tanka = 500;

SELECT
    shohin_mei,
    hanbai_tanka AS hanbai_tanka_not_equal_500
FROM Shohin
WHERE hanbai_tanka <> 500;

SELECT
    shohin_mei,
    hanbai_tanka AS hanbai_tanka_500_or_more
FROM Shohin
WHERE hanbai_tanka >= 500;

SELECT
    shohin_mei,
    hanbai_tanka AS hanbai_tanka_more_than_500
FROM Shohin
WHERE hanbai_tanka > 500;

SELECT
    shohin_mei,
    hanbai_tanka AS hanbai_tanka_500_or_less
FROM Shohin
WHERE hanbai_tanka <= 500;

SELECT
    shohin_mei,
    hanbai_tanka AS hanbai_tanka_more_less_500
FROM Shohin
WHERE hanbai_tanka < 500;

-- 日付型に対しても比較できる

SELECT shohin_mei, shohin_bunrui, torokubi
FROM Shohin
WHERE torokubi < '2009-09-27';

-- 文字列型に対する比較は辞書順になる

SELECT chr
FROM Chars
WHERE chr > '2';

/*
辞書順は以下の通り。

1
10
11
2
222
3
*/

-- IS NULL, IS NOT NULL

/*
Note:
NULLに比較演算子は使用できない。使用しても結果は出てこず無視される。
NULLの判定はIS NULL, IS NOT NULL演算子を使用する。
*/

SELECT shohin_mei, shiire_tanka
FROM Shohin
WHERE shiire_tanka IS NULL;

SELECT shohin_mei, shiire_tanka
FROM Shohin
WHERE shiire_tanka IS NOT NULL;
