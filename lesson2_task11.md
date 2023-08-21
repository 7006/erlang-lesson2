Example of step by step exection of `encode_modified/1`

|List|Acc|
|----|---|
|aaabccccdee|[]
|aabccccdee|{1,a}
|abccccdee|{2,a}
|bccccdee|{3,a}
|ccccdee|b {3,a} 
|cccdee|{1,c} b {3,a}
|ccdee|{2,c} b {3,a}
|cdee|{3,c} b {3,a}
|dee|{4,c} b {3,a}
|ee|d {4,c} b {3,a}
|e|{1,e} d {4,c} b {3,a}
|[]|{2,e} d {4,c} b {3,a}