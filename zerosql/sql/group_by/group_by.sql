-- GROUP BY

SELECT
    shohin_bunrui,
    COUNT(*)
FROM
    Shohin
GROUP BY
    shohin_bunrui;

/*
Note:
GROUP BY句に指定する列のことを「集約キー」または「グループ化列」と呼ぶ。

Note:
集約キーにNULLが含まれる場合、結果にも不明行として現れる。
*/

/*
WHERE句をつけた集約。
先にWHERE句で絞り込んでから、GROUP BYで集約が行われる。
*/
SELECT
    shiire_tanka,
    COUNT(*)
FROM
    Shohin
WHERE
    shohin_bunrui = '衣服'
GROUP BY
    shiire_tanka;

/*
Note:
GROUP BY句を使用した場合、SELECT句には集約キー以外の列名は書けない。

Note:
GROUP BY句にSELECT句でつけた別名は使えない。
*/
