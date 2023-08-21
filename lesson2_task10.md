Example of step by step exection of `encode/1`

|List|Acc|
|----|---|
|aaabccccdee|[]
|aabccccdee|{1,a}
|abccccdee|{2,a}
|bccccdee|{3,a}
|ccccdee|{1,b} {3,a} 
|cccdee|{1,c} {1,b} {3,a}
|ccdee|{2,c} {1,b} {3,a}
|cdee|{3,c} {1,b} {3,a}
|dee|{4,c} {1,b} {3,a}
|ee|{1,d} {4,c} {1,b} {3,a}
|e|{1,e} {1,d} {4,c} {1,b} {3,a}
|[]|{2,e} {1,d} {4,c} {1,b} {3,a}