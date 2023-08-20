Example of step by step exection of `pack/1`

|List|Dup|Acc|
|----|---|---|
|aaabccccdee|[]|[]
|aabccccdee|a|[]
|abccccdee|aa|[]
|bccccdee|[]|[aaa]
|ccccdee|[]|[b] [aaa] 
|cccdee|c|[b] [aaa]
|ccdee|cc|[b] [aaa]
|cdee|ccc|[b] [aaa]
|dee|[]|[cccc] [b] [aaa]
|ee|[]|[d] [cccc] [b] [aaa]
|e|e|[d] [cccc] [b] [aaa]
|[]|[]|[ee] [d] [cccc] [b] [aaa]