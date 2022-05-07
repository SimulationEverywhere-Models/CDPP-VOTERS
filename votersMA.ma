[top]
components : voter

[voter]
type : cell
dim : (10, 10)
delay : transport
defaultDelayTime  : 100
border : wrapped 
neighbors : voter(-1,0) voter(0,-1)  voter(0,0)  voter(0,1) voter(1,0)
initialvalue : 0
initialrowvalue :  0      0000000000
initialrowvalue :  1      0000000000
initialrowvalue :  2      0000000000
initialrowvalue :  3      0000000000
initialrowvalue :  4      0000011111
initialrowvalue :  5      1111122222
initialrowvalue :  6      2222222222
initialrowvalue :  7      2222222222
initialrowvalue :  8      2222222222
initialrowvalue :  9      2222222222
localtransition : vote-rule

[vote-rule]
rule : {trunc((0,0)) + uniform(0,0.99)} 100 { random < 0.5 } 
rule : {trunc((0,-1)) + uniform(0,0.99)} 100 { random < 0.25 } 
rule : {trunc((1,0)) + uniform(0,0.99)} 100 { random < 0.333333 } 
rule : {trunc((-1,0)) + uniform(0,0.99)} 100 { random < 0.5 }
rule : {trunc((0,1)) + uniform(0,0.99)} 100 { t }
