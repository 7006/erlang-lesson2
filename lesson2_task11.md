Example of step by step exection of `encode_modified/1`

|List|Count|Acc|
|----|-----|---|
|aaabccccdee|0|[]
|aabccccdee|1|[]
|abccccdee|2|[]
|bccccdee|0|{3,a}
|ccccdee|0|b {3,a} 
|cccdee|1|b {3,a}
|ccdee|2|b {3,a}
|cdee|3|b {3,a}
|dee|0|{4,c} b {3,a}
|ee|0|d {4,c} b {3,a}
|e|1|d {4,c} b {3,a}
|[]|0|{2,e} d {4,c} b {3,a}