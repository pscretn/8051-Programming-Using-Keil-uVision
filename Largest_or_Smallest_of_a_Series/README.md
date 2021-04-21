# Largest_or_Smallest_of_a_Series
Here in this program , we will write program to find the largest and smallest value from a series<br>
## Follow Steps from Main page
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
### Writing Code
Now inorder to write code we need a blank file , Click on `File` >> `New...` or can use keyboard shorcut `Ctrl`+`N`<br><br>
![](/images/img7.png) <br><br>

# Largest of a Series
### Program
``` Assembly
$mod51
org 00h
mov dptr ,#4300h
mov r0,#0ah
mov b,#00h
mov a,#00h
loop:movx a,@dptr
cjne a,b,l1
l1:jc l2
mov b,a
l2:inc dptr
djnz r0,loop
mov a,b
mov dptr,#4500h
movx @dptr,a
l3:sjmp l3
end
```
# Smallest of a Series
### Program
```Assembly
  
$mod51
org 00h
mov dptr ,#4300h
mov r0,#0ah
mov b,#0ffh
mov a,#00h
loop:movx a,@dptr
cjne a,b,l1
l1:jnc l2
mov b,a
l2:inc dptr
djnz r0,loop
mov a,b
mov dptr,#4500h
movx @dptr,a
l3:sjmp l3
end
```
