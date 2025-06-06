SELECT ABS(-17.4);
SELECT CBRT(64.0);
SELECT CEIL(42.2);
SELECT CEIL(-42.8);
SELECT CEILING(95.3);
SELECT DEGREES(0.5);
SELECT DIV(9, 4);
SELECT EXP(1.0);
SELECT FACTORIAL(5);
SELECT FLOOR(42.8);
SELECT FLOOR(-42.8);
SELECT GCD(1071, 462);
SELECT LCM(1071, 462);
SELECT LN(2.0);
SELECT LOG(100);
SELECT LOG10(1000);
SELECT LOG(2.0, 64.0);
SELECT MIN_SCALE(8.4100);
SELECT MOD(9, 4);
SELECT PI();
SELECT POWER(9, 3);
SELECT RADIANS(45.0);
SELECT ROUND(42.4);
SELECT ROUND(42.4382, 2);
SELECT SCALE(8.4100);
SELECT SIGN(-8.4);
SELECT SQRT(2);
SELECT TRIM_SCALE(8.4100);
SELECT TRUNC(42.8);
SELECT TRUNC(-42.8);
SELECT TRUNC(42.4382, 2);
SELECT WIDTH_BUCKET(5.35, 0.024, 10.06, 5);
SELECT WIDTH_BUCKET(NOW(), ARRAY['YESTERDAY', 'TODAY', 'TOMORROW']::TIMESTAMPTZ[]);
SELECT RANDOM();
SELECT SETSEED(0.12345);
SELECT ACOS(1);
SELECT ACOSD(0.5);
SELECT ASIN(1);
SELECT ASIND(0.5);
SELECT ATAN(1);
SELECT ATAND(1);
SELECT ATAN2(1, 0);
SELECT ATAN2D(1, 0);
SELECT COS(0);
SELECT COSD(60);
SELECT COT(0.5);
SELECT COTD(45);
SELECT SIN(1);
SELECT SIND(30);
SELECT TAN(1);
SELECT TAND(45);
SELECT SINH(1);
SELECT COSH(0);
SELECT TANH(1);
SELECT ASINH(1);
SELECT ACOSH(1);
SELECT ATANH(0.5);