# Square-or-SquareRoot-of-8-bit-Data
Here we are going to write a program to find square and square root of 8 bit data.
## <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision">Follow Steps from Main page</a>
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
* Writing Code
* Project Build
* Debug and Run Code<br><br>
## Square of 8-bit Data
 ### Program
 ```Assembly
$mod51
org 00h
mov dptr,#4300h
movx a,@dptr
mov b,a
mov dptr,#4300h
movx a,@dptr
mul ab
inc dptr
movx @dptr,a
mov a,b
inc dptr
movx @dptr,a
l1:sjmp l1
end
```
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/im8.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/im9.png) <br><br>
* Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `0A` ] >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
### Output
From the image below we can see the square of 8-bit numbers in Location : 4300 <br><br>
![](/images/im10.png) <br><br>
## SquareRoot of 8-bit Data
 ### Program
 ```Assembly
$mod51
org 00h
mov r1,#00h
mov r2,#01h
mov dptr,#4300h
movx a, @dptr
l1:subb a,r2
jz l2
jc l3
inc r1
inc r2
inc r2
sjmp l1
l2:inc r1
mov r2,#00h
sjmp l4
l3:add a,r2
mov r2,a
l4:mov a,r1
inc dptr
movx @dptr,a
mov a,r2
inc dptr
movx @dptr,a
l:sjmp l
end
```
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/im5.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/im6.png) <br><br>
* Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `0A` ] >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
### Output
From the image below we can see the square root of 8-bit numbers in Location : 4300 <br><br>
![](/images/im7.png) <br><br>
