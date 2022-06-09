select abs(-15) from dual;      -- 절대값
select ceil(15.2) from dual;    -- 올림
select power(3,2) from dual;    -- power(x, n) x의 n제곱 (거듭제곱)
select round(15.2) from dual;   -- 반올림
select concat('HAPPY', 'Birthday'); -- 문자열 덧셈
select lower('Birthday');       -- 소문자
select lpad('Page 1', 15, '*'); -- lpad('문자', 삽일할 문자 갯수, '삽입할 문자') 문자 앞에 삽입
select LTRIM(' Page 1');        -- 좌측 공백 삭제
select REPLACE('ABCDEFG', 'A', 4); -- ('대상', '수정될 값', '수정할 값'); result : 4ABCDEFG
select SUBSTR('ABCEDFG', 3, 4); -- 3번쨰 포함 4개까지만 출력
select upper('Birthday');       -- 대문자
select ASCII('A');              -- 아스키 문자
select INSTR('CORPORATE', 'OR');-- CORPORATE 에서 OR의 위치 없으면 0 / result : 2
select LENGTH('Birthdya');      -- 길이
select sysdate(); -- 지금 날짜 시간을 출력;
select nullif(123, 345);        -- 123이 null 이면 345 반환 아니면 123 반환
select IFNULL(NULL, 123);       -- 앞의 값이 NULL이면 뒷값 반환

