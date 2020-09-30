# Задание 1
andrei@MacBook-Pro-Andrej task01 % cut -f2 -d» « table.txt <br>
68 <br>
38 <br>
87 <br>
36 <br>
24 <br>
28 <br>
14 <br>
79 <br>
20 <br>
35 <br>
30 <br>
64 <br>
57 <br>
94 <br>
60 <br>
6 <br>
21 <br>
48 <br>
87 <br>
15 <br>
9 <br>
12 <br>
83 <br>
20 <br>
81 <br>
29 <br>
96 <br>
83 <br>
13 <br>
86 <br>
60 <br>
38 <br>
76 <br>
90 <br>
8 <br>
67 <br>
31 <br>
77 <br>
73 <br>
64 <br>
23 <br>
83 <br>
28 <br>
30 <br>
11 <br>
13 <br>
36 <br>
35 <br>
40 <br>
26 <br>
19 <br>
65 <br>
1 <br>
11 <br>
69 <br>
67 <br>
77 <br>
41 <br>
51 <br>
59 <br>
4 <br>
83 <br>
50 <br>
6 <br>
44 <br>
52 <br>
7 <br>
57 <br>
40 <br>
82 <br>
92 <br>
78 <br>
71 <br>
13 <br>
68 <br>
6 <br>
66 <br>
42 <br>
87 <br>
14 <br>
15 <br>
39 <br>
76 <br>
11 <br>
45 <br>
98 <br>
38 <br>
43 <br>
91 <br>
46 <br>
47 <br>
35 <br>
62 <br>
11 <br>
12 <br>
99 <br>
14 <br>
30 <br>
98 <br>
20 <br>

andrei@MacBook-Pro-Andrej task01 % nano task01.sh <br>         
andrei@MacBook-Pro-Andrej task01 % nano task01.sh <br>
andrei@MacBook-Pro-Andrej task01 % python3 test01.py <br>
. <br>
——————————————————————————————————— <br>
Ran 1 test in 0.006s <br>

OK <br>


# Задание 2
andrei@MacBook-Pro-Andrej task02 % cat numbers.txt | sort | uniq | wc -l <br>
     377 <br>
andrei@MacBook-Pro-Andrej task02 % nano task02.sh <br>                   
andrei@MacBook-Pro-Andrej task02 % python3 test02.py <br>               
. <br>
——————————————————————————————————— <br>
Ran 1 test in 0.015s <br>

OK <br>

# Задание 3
andrei@MacBook-Pro-Andrej seminar02 % tail -f _dev_null <br>
andrei@MacBook-Pro-Andrej seminar02 % nano > _dev_null & <br>
[1] 44097 <br>
andrei@MacBook-Pro-Andrej seminar02 % nano > _dev_null & <br> 
[1] 44097 <br>
andrei@MacBook-Pro-Andrej seminar02 % <br>
[1]  + suspended (tty output)  nano > _dev_null <br>
andrei@MacBook-Pro-Andrej seminar02 % pkill 44097 <br>

andrei@MacBook-Pro-Andrej task03 % python3 test03.py <br>
OK <br>

# Задание 4
andrei@MacBook-Pro-Andrej task04 % sed ‘_#_c/f’ test04.py <br>
sed: 1: «_#_c/f»: command c expects \ followed by text <br>

Мак ругается, что ему не нравится запись. Так и не нашел, как сделать, чтобы он принял. <br>

# Задание 5
andrei@MacBook-Pro-Andrej task05 % cat file.property <br>                                                          
year=2020 <br>
course=linux-basic <br>
name= <br>
lastname= <br>
andrei@MacBook-Pro-Andrej task05 % sed -i ‘’ ’s_name=_name=andrei/‘ file.property <br>                    
andrei@MacBook-Pro-Andrej task05 % sed -i ‘’ ’s_lastname=andrei_lastname=kozyrev/‘ file.property <br>             
andrei@MacBook-Pro-Andrej task05 % cat file.property <br>                                            
year=2020 <br>
course=linux-basic <br>
name=andrei <br>
lastname=kozyrev <br>
andrei@MacBook-Pro-Andrej task05 % python3 test05.py <br>
OK <br>

# Задание 6 
andrei@MacBook-Pro-Andrej task06 % grep -n «https:» urls.txt | cut -f1,2 -d»\»» | sed ’s_\<p\>\<a href=«_ /‘ <br>
2: https://www.w3.org/ <br>
3: https://www.google.com/ <br>
andrei@MacBook-Pro-Andrej task01 % nano task06.sh <br>
andrei@MacBook-Pro-Andrej task01 % python3 test06.py <br>
OK <br>

# Задание 7
andrei@MacBook-Pro-Andrej task07 % awk ‘{print $2» « $1» « $3» « $4» « $5}’ digits.txt <br>
2 1 3 4 5 <br>
3 2 4 5 1 <br>
4 3 5 1 2 <br>
5 4 1 2 3 <br>
1 5 2 3 4 <br>
2 1 3 4 5 <br>
andrei@MacBook-Pro-Andrej task07 % nano task07.sh <br>
andrei@MacBook-Pro-Andrej task07 % python3 test07.py <br>
. <br>
——————————————————————————————————— <br>
Ran 1 test in 0.005s <br>

OK <br>

# Задание 8
andrei@MacBook-Pro-Andrej task08 % grep -o -wi the hamlet.txt | wc -l <br>
    1090 <br>
andrei@MacBook-Pro-Andrej task08 % nano task08.sh <br>
andrei@MacBook-Pro-Andrej task08 % python3 test08.py <br>
——————————————————————————————————— <br>
Ran 1 test in 0.010s <br>

OK <br>

# Задание 9
andrei@MacBook-Pro-Andrej task09 % grep ~~E -o «\b[A-Za-z0-9._%+~~]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,6}\b» emails.txt <br>
joe@aol.com <br>
joe@wrox.co.uk <br>
oe@domain.info <br>
andrei@MacBook-Pro-Andrej task09 % nano task09.sh <br>               
andrei@MacBook-Pro-Andrej task09 % python3 test09.py <br>
. <br>
——————————————————————————————————— <br>
Ran 1 test in 0.022s <br>

OK <br>




