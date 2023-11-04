-- HAVING

/*
集約結果に対して条件を指定する句。
*/

SELECT
    shohin_bunrui,
    COUNT(*)
FROM
    Shohin
GROUP BY
    shohin_bunrui
HAVING
    COUNT(*) = 2;

/*
Note:
HAVING句に書くことができる要素は以下の３つのみ。

* 定数
* 集約関数
* GROUP BY句で指定した列名（集約キー）
*/

/*
Note:
WHERE句  = 行に対する条件指定
HAVING句 = グループに対する条件指定
とするべき。
*/
