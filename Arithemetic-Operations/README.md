# Arithemetic-Operations
Here we are going to write programs to Add and Substract two 8-bit & 16-bit numbers, Multiply and Divide two 8-bit numbers.
## <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision">Follow Steps from Main page</a>
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
* Writing Code
* Project Build
* Debug and Run Code<br><br>
 ## Addition of two 8-bit number
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
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/imga.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imgb.png) <br><br>
* Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `42` : `72` ]<br> >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
* Locate "Memory 1" tab ,double click inside "Address" box<br>
* type Address : ```x:4500h```
### Output
From the image below we can see the sum of two 8-bit number in Location : 4500 <br><br>
![](/images/imgc.png) <br><br>
 ## Addition of two 16-bit number
 here we are going to write program to add two 16-bit number
 ### Program
 ```Assembly
$mod51
org 00h
mov r2,#00h
mov dptr,#4300h
movx a, @dptr
mov r0,a
mov dptr,#4302h
movx a,@dptr
add a,r0
mov dptr ,#4305h
movx @dptr,a
mov dptr ,#4301h
movx a,@dptr
mov r0,a
mov dptr,#4303h
movx a,@dptr
addc a,r0
mov dptr,#4306h
movx @dptr,a
jnc l2
inc r2
l2:mov dptr,#4307h
mov a,r2
movx @dptr,a
l3:sjmp l3
end
```
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/imgd.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imge.png) <br><br>
 * Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `76` : `F1` : `42` : `23` ]<br> >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
### Output
From the image below we can see the sum of two 16-bit number in Location : 4300 <br><br>
![](/images/imgf.png) <br><br>

 ##  Subtraction of two 8-bit number
 here we are going to write program to  subtract two 8-bit number
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
subb a,r1
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
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/imgh.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imgb.png) <br><br>
* Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `42` : `72` ]<br> >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
* Locate "Memory 1" tab ,double click inside "Address" box<br>
* type Address : ```x:4500h```
### Output
From the image below we can see the difference of two 8-bit number in Location : 4500 <br><br>
![](/images/imgi.png) <br><br>
 ##  Subtraction of two 16-bit number
 here we are going to write program to subtract two 16-bit number
 ### Program
 ```Assembly
$mod51
org 00h
mov r2,#00h
mov dptr,#4300h
movx a, @dptr
mov r0,a
mov dptr,#4302h
movx a,@dptr
subb a,r0
mov dptr ,#4305h
movx @dptr,a
mov dptr ,#4301h
movx a,@dptr
mov r0,a
mov dptr,#4303h
movx a,@dptr
subb a,r0
mov dptr,#4306h
movx @dptr,a
jnc l2
inc r2
l2:mov dptr,#4307h
mov a,r2
movx @dptr,a
l3:sjmp l3
end
```
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/imgj.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imgk.png) <br><br>
 * Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `15` : `F0` : `00` : `F4` ]<br> >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
### Output
From the image below we can see the difference of two 16-bit number in Location : 4300 <br><br>
![](/images/imgl.png) <br><br>
 ##  Multiplication of two 8-bit number
 here we are going to write a program to multiply two 8-bit number
 ### Program
 ```Assembly
$mod51
org 00h
mov dptr,#4300h
movx a,@dptr
mov b,a
inc dptr
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
![](/images/imgm.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imgn.png) <br><br>
 * Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `03` : `02` ]<br> >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
### Output
From the image below we can see the product of two 8-bit number in Location : 4300 <br><br>
![](/images/imgo.png) <br><br>
 ##  Division of two 8-bit number
 here we are going to write a program to divide two 8-bit number
 ### Program
 ```Assembly
$mod51
org 00h
mov dptr,#4300h
movx a,@dptr
mov b,a
inc dptr
movx a,@dptr
div ab
inc dptr
movx @dptr,a
mov a,b
inc dptr
movx @dptr,a
l1:sjmp l1
end
```
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/imgp.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imgq.png) <br><br>
 * Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `03` : `02` ]<br> >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
### Output
From the image below we can see the quotient of two 8-bit number in Location : 4300 <br><br>
![](/images/imgr.png) <br><br>
