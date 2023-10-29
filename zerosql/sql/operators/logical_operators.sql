-- 論理演算子

/*
Note:
SQLは、真(TRUE), 偽(FALSE), 不明(UNKNOWN)の3値論理。
NULLに対して比較演算子や論理演算子を使用すると結果は不明(UNKNOWN)になる。
*/

-- NOT 否定

SELECT shohin_mei, shohin_bunrui, hanbai_tanka
FROM Shohin
WHERE NOT hanbai_tanka >= 1000;

-- AND かつ

SELECT shohin_mei, shiire_tanka
FROM Shohin
WHERE (shohin_bunrui = 'キッチン用品') AND (hanbai_tanka >= 3000);

-- OR または

SELECT shohin_mei, shiire_tanka
FROM Shohin
WHERE (shohin_bunrui = 'キッチン用品') OR (hanbai_tanka >= 3000);
