# Matrix-Addition
Here we are going to write a program for matrix addition of 8 bit data.
## <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision">Follow Steps from Main page</a>
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
* Writing Code
* Project Build
* Debug and Run Code<br><br>

 ## Program
 ```Assembly
$mod51
org 00h
mov dptr, #4300h
mov r2,#09h
mov r0,#00h
mov r7,#50h
mov r3,#70h
loop1:mov dpl,r0
movx a,@dptr
mov r1,a
mov dpl,r7
movx a,@dptr
add a,r1
mov dpl,r3
movx @dptr,a
inc r3
inc r7
inc r0
djnz r2,loop1
loop2:sjmp loop2
end
```
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/im1.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/im2.png) <br><br>
* Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `01` : `02` : `03` : `04` : `05` : `06` : `07` : `09`] >> Press `Enter`
* Locate "Memory 1" tab ,double click inside "Address" box<br>
* type Address : ```x:4350h``` <br><br>
![](/images/im3.png) <br><br>
* Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `01` : `02` : `03` : `04` : `05` : `06` : `07` : `09`] >> Press `Enter`
* Run Code , After a few seconds we need to Stop running the code
* Locate "Memory 1" tab ,double click inside "Address" box<br>
* type Address : ```x:4370h```
## Output
From the image below we can see the sum of matrix multiplication of 8-bit numbers in Location : 4370 <br><br>
![](/images/im4.png) <br><br>
