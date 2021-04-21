# Largest_or_Smallest_of_a_Series
Here in this program , we will write program to find the largest and smallest value from a series<br>
## Follow Steps from Main page
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
### Writing Code
Now inorder to write code we need a blank file , Click on `File` >> `New...` or can use keyboard shorcut `Ctrl`+`N`<br><br>
![](/images/img7.png) <br><br>

# Largest of a Series
## Program
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
copy the code from above and paste it as shown in the figure below<br><br>
![](/images/img25.png) <br><br>
Now "Save As" the file , Click on `File` >> `Save As...`<br><br>
![](/images/img26.png) <br><br>
Give a file name to your code with extenstion *.asm, for eg code.asm , then `save` it.<br><br>
![](/images/img27.png) <br><br>
 In left corner you can see a `Project`Box , in that `Project` Box expand `Target 1`  , then Right click on  `Source Group 1`, Then click on `Add Existing Files to Group 'Source Group 1'...`<br><br>
![](/images/img11.png) <br><br>
Select the Files of type : `Asm Source file (*.s*;*.src*;*.a*)` , Select the file with extenstion *.asm , here in my case it is "code1.asm" , Click on `Add` and click on `Close`<br><br>
![](/images/img12.png) <br><br>
# Smallest of a Series
## Program
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
