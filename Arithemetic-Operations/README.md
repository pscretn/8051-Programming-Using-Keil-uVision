# Arithemetic-Operations
Here we are going to write programs to Add and Substract two 8-bit & 16-bit numbers, Multiply and Divide two 8-bit numbers.
## <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision">Follow Steps from Main page</a>
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
* Writing Code
* Project Build
* Debug and Run Code<br><br>
 ## Addition of 8-bit
 here we are going to write program to add two 8-bit number
 ### Program
 ```Assembly
 $mod51
org 00h
mov dptr,#4300h
movx a,@dptr
mov r1,a
inc dptr
movx a,@dptr
mov r0, #00h
add a,r1
mov dptr,#4500h
movx @dptr,a
jnc l1
inc r0
l1:inc dptr
mov a,r0
movx @dptr,a
l2:sjmp l2
end
```
copy the code from above and paste it as shown in the figure below<br><br>
![](/images/imga.png) <br><br>
Now save the code , build it and start debugging<br>
Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
now type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imgb.png) <br><br>
Change the values as shown in image below , Inorder to alter value , Double-Click on it >> Change Value [ `11` : `08` ]<br> >> Press `Enter`<br><br>
