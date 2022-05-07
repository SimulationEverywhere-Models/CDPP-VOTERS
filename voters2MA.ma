[top]
components : voter2

[voter2]
type : cell
dim : (10, 10)
delay : transport
defaultDelayTime  : 100
border : wrapped 
neighbors : voter2(-1,0) voter2(0,-1)  voter2(0,0)  voter2(0,1) voter2(1,0)
initialvalue : 0
initialrowvalue :  0      0022202002
initialrowvalue :  1      2221020002
initialrowvalue :  2      0022110020
initialrowvalue :  3      0022020022
initialrowvalue :  4      2012022200
initialrowvalue :  5      2002021222
initialrowvalue :  6      1102002202
initialrowvalue :  7      0002002202
initialrowvalue :  8      1200022220
initialrowvalue :  9      0201200102
localtransition : vote-rule

[vote-rule]
rule : {trunc((0,0)) + uniform(0,0.99)} 100 { random < 0.5 } 
rule : {trunc((0,-1)) + uniform(0,0.99)} 100 { random < 0.25 } 
rule : {trunc((1,0)) + uniform(0,0.99)} 100 { random < 0.333333 } 
rule : {trunc((-1,0)) + uniform(0,0.99)} 100 { random < 0.5 }
rule : {trunc((0,1)) + uniform(0,0.99)} 100 { t }

