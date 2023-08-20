Example of step by step exection of `encode/1`

|List|Count|Acc|
|----|-----|---|
|aaabccccdee|0|[]
|aabccccdee|1|[]
|abccccdee|2|[]
|bccccdee|0|{3,a}
|ccccdee|0|{1,b} {3,a} 
|cccdee|1|{1,b} {3,a}
|ccdee|2|{1,b} {3,a}
|cdee|3|{1,b} {3,a}
|dee|0|{4,c} {1,b} {3,a}
|ee|0|{1,d} {4,c} {1,b} {3,a}
|e|1|{1,d} {4,c} {1,b} {3,a}
|[]|0|{2,e} {1,d} {4,c} {1,b} {3,a}