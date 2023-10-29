-- 算術演算子

SELECT
    shohin_mei,
    hanbai_tanka,
    hanbai_tanka + 100 as add_100,
    hanbai_tanka - 100 as sub_100,
    hanbai_tanka * 2 as multi_2,
    hanbai_tanka / 300 as div_300,
    hanbai_tanka % 300 as rem_300
FROM Shohin;

/*
Note:
NULLを含む演算の結果はすべてNULLになる。

例)
5 + NULL = NULL
NULL / 0 = NULL
*/
