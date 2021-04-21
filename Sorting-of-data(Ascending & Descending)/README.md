# Sorting-of-data (Ascending & Descending)
Here we are going write a program to sort data in ascending and descending order
## Follow Steps from Main page
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
### Writing Code
Now inorder to write code we need a blank file , Click on `File` >> `New...` or can use keyboard shorcut `Ctrl`+`N`<br><br>
![](/images/img7.png) <br><br>
# Program
### Ascending-sorting
```Assembly
$mod51
org 00h
mov r4,#0ah
l3:mov r3,#09h
mov dptr,#4300h
clr c
l2:movx a,@dptr
mov r1,a
inc dptr
movx a,@dptr
subb a,r1
jnc l1
movx a,@dptr
dec dpl
movx @dptr,a
mov a,r1
inc dptr 
movx @dptr,a
l1:djnz r3,l2
djnz r4,l3
mov dptr,#4300h
movx a,@dptr
mov dptr,#4350h
movx @dptr,a
mov dptr,#4309h
movx a,@dptr
mov dptr,#4351h
movx @dptr,a
l:sjmp l
end
```
### Descending-sorting
``` Assembly
$mod51
org 00h
mov r4,#0ah
l3:mov r3,#0ah
mov dptr,#4300h
clr c
l2:movx a,@dptr
mov r1,a
inc dptr
movx a,@dptr
subb a,r1
jc l1
movx a,@dptr
dec dpl
movx @dptr,a
mov a,r1
inc dptr 
movx @dptr,a
l1:djnz r3,l2
djnz r4,l3
mov dptr,#4300h
movx a,@dptr
mov dptr,#4350h
movx @dptr,a
mov dptr,#4309h
movx a,@dptr
mov dptr,#4351h
movx @dptr,a
l:sjmp l
end
```
