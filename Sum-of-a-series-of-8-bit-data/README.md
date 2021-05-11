# Sum-of-a-series-of-8-bit-data
Here we are going to write a program to Add a Series of 8 bit data.
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
mov r1,#0ah
mov r6, #00h
mov r7, #00h
mov dptr, #4300h
loop: movx a,@dptr
add a,r6
mov r6,a
mov a,r7
addc a,#00h
mov r7,a
inc dptr
djnz r1,loop
mov dptr,#4500h
mov a,r6
movx @dptr,a
inc dptr
mov a,r7
movx @dptr,a
here:sjmp here
end
```
* Copy the code from above and paste it as shown in the figure below<br><br>
![](/images/ima.png) <br><br>
 * Save the code , build it and start debugging<br>
* Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img16.png) <br><br>
* type Address : ```x:4300h``` as shown in image above<br><br>
![](/images/imb.png) <br><br>
* Change the values as shown in image above , Inorder to alter value , Double-Click on it >> Change Value [ `01` : `02`  `03` : `04`  `05` : `06`  `07` : `09`  `0A` ]<br> >> Press `Enter`
*  Run Code , After a few seconds we need to Stop running the code
* Locate "Memory 1" tab ,double click inside "Address" box<br>
* type Address : ```x:4500h```
## Output
From the image below we can see the sum of series of 8-bit numbers in Location : 4500 <br><br>
![](/images/imc.png) <br><br>
