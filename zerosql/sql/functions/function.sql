-- 集約関数

/*
テーブルの全行数を数える。
*/
SELECT COUNT(*) AS count_all
FROM Shohin;

/*
テーブルの列を指定してカウントすると、NULLの行は除外される。
*/
SELECT COUNT(shiire_tanka) AS count_shiire_tanka
FROM Shohin;

/*
Note:
アスタリスク(*)を引数にとれる関数はCOUNT関数のみ。
*/

/*
合計を求める。
*/
SELECT SUM(hanbai_tanka) AS sum_hanbai_tanka
FROM Shohin;

/*
Note:
集約関数はNULLを除外してから計算を行う。
*/

/*
平均を求める。
*/
SELECT AVG(shiire_tanka) AS avg_shiire_tanka
FROM Shohin;

/*
最大値と最小値を求める。
*/
SELECT
    MAX(torokubi) AS max_torokubi,
    MIN(torokubi) AS min_torokubi
FROM
    Shohin;

/*
Note:
MAXとMINはどんなデータ型にも適用可能。数値型、日付型、文字列型。
SUMとAVGは数値型にのみ適用可能。
*/

/*
重複値を除いて集約を行う。
*/
SELECT COUNT(DISTINCT shohin_bunrui)
FROM Shohin;

/*
Note:
集約関数を使った場合、SELECT句に書くことができる要素は以下の３つのみ。

* 定数
* 集約関数
* GROUP BY句で指定した列名（集約キー）
*/

/*
Note:
集約関数を書ける場所は SELECT句、HAVING句、ORDER BY句 のみ。
*/
