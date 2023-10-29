-- 重複を省く

SELECT DISTINCT shohin_bunrui
FROM Shohin;

-- shohin_bunruiとtorokubi列の組み合わせがまったく同じ行が1つの行にまとめられる
SELECT DISTINCT shohin_bunrui, torokubi
FROM Shohin;

/*
Note:
DISTINCTキーワードはSELECT文の最も左にしか書けない。

Note:
NULLがある場合も、1つのNULLとしてまとめられる。
*/
