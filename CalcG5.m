function [G5] = CalcG5(a,b,c)
% 古典制御理論基礎編(荒木光彦)、4.2.4のp.106、(ⅴ)の伝達関数を求め、定常ゲインは1にする。
    s = tf('s');

    G5 = 1 / (((s+a)^2+b^2)*(s+c));
    G5 = G5*G5.Denominator{1}(end)/G5.Numerator{1}(end);
end

