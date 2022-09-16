# NumberEachLine

## What it does:
It takes an input string of lines and numbers each line of the string. It also adds some features like:
- paddings
- prefix
- suffix
# 
Here is an example of a **live project** :  [NumberEachLine](http://textmechanic.com/text-tools/numeration-tools/number-each-line/)
#
This project is a task from **Practical Test Automation** book

## What I learned

- through that task I could apply the knowledge I learnt about  unit testing so I could write the specifications and the implementation.
- Understood
   -  Rspec.
  -  how to work with bundler and Gems.
  - Understood how heredocs works and why it is better to use instead of strings at some cases.

## project requirements

**(1)** The purpose of this class is to take as input a multiline string and return back each line of the string being suffixed with its corresponding line number. \

**For example**, if you have the string:\
This is a multi-line\
string. This is second line\
And this is third line\

**the class should return back this:**\

1This is a multi-line\
2string. This is second line\
3And this is third line\

**(2)** Besides this main functionality, the class should allow for some kind of
configuration. **For example**, you want to tell that each number should be
suffixed with the string ". ". If you say that, then the returned string should be
something like this:\

1.This is a multi-line\
2.string. This is second line\
3.And this is third line\

**(3)**	Or you may say that the line numbering should start from 8, not 1. In that case,
the output should be something like this:\
8This is a multi-line\
9string. This is second line\
10And this is third line

**(4)**  You may also say that you want each number to be padded with 0s or other
character sequence. **For example**, assuming that you want the numbers to be
padded with zeros, the input is:\

This is a multi-line\
string. This is a second line\
And this is the third line\
And this is the fourth line\
And this is the fifth line\
And this is the sixth line\
And this is the seventh line\
And this is the eighth line\
And this is the ninth line\
And this is the tenth line\
And this is the eleventh line\

**the output** will be\

01This is a multi-line\
02string. This is a second line\
03And this is the third line\
04And this is the fourth line\
05And this is the fifth line\
06And this is the sixth line\
07And this is the seventh line\
08And this is the eighth line\
09And this is the ninth line\
10And this is the tenth line\
11And this is the eleventh line

**(5)**	However, when the number of lines does not justify padding, then padding will
not be used even if specified. Hence, if you specify that you want padding with
0s but the input is less than ten lines long, then no padding will take place. In
other words, the **input**:
\
line 1\
line 2
\
is **output** as:\
1line 1\
2line 2

**(6)** You may also ask the class to prefix each line with a prefix string. Assume that
you have the following input and the prefix you want to attach to each line is '#':
\
line 1\
line 2
\
Then the **output** will be\
#1line1\
#2line2

## For running tests
```
bundle exec rspec
```
## Screenshot after running tests

<img src="https://lh3.googleusercontent.com/L1jl4QTe_oBkuLYIo6CkBm1up4PN-qZgWXqssVFHdF4XQVfkBFzRTCq6Ieze17-DdRW0pKAzpGkTB9SG-aW12508wn7B25gSkNNLUdsqtyJCthVWMv5GgK8-S8zN5QKMijgGkvSbtR11qatukKZETMe1fAr-OxbLF4Yz1Rf7aI6EH_SDhiVbHgxivPkZjqCtUj4jM3zWQ-LOFVXXy_Ylm3LJO7tuoN3u-RDNzIsd-MGTevMg_s3_ElV8ehrdZ0kuB-0FMFCCzsikotG4qd_T_8nNTh3JNXyhQBD3IQpHBnf3iA8K4Hb0plD8IGevtAcdZrwOLZcjJvHSY88sIYb8m8Lq2XfL83lnDxDYtN-nQS2RpSPetuyknJr1zGylJ_6iYw3OmOf9hS_y3DolAjgt22d8KvkMHiHDTxHqnh-boPysgieE2Vfq4HlqW2Vil7p9TTGtuFb8PDmg-7yOr4rOTOH6idYdHdvi5bIrFw2OMA2vuO3zC34v9QV0_c0xPVX5eoC8hWVUyoOtlfUssiyxObDLbE1HI1XdCGvqsJ3dHoVr-OG9bRk5aMOQ2dGfZPNrDZc5bZkFyCyd3hl5yJIbg_sjxmApB39b-PyzEN6sIuCUcAWBTUkqkCwRvtMYslCaZ3kJSmRJN03wWbUA0RBN358tcEUVM2h89dzSTHRwxmQ6yX2ROMpOXPubsbIGYcWeRny-Ktm42-26u9klZqbIMVr68BXsPTkVOT4zCuhB00imJ2tyY9ANbnKeGTWCVeMox17K0qsENhbgG28DrEwYnoTfH5OynslirAU=w908-h506-no?authuser=0" alt="Employee data" title="Employee Data title">
