# Sorting-of-data (Ascending & Descending)
Here we are going write a program to sort data in ascending and descending order
## <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision">Follow Steps from Main page</a>
* Creating a Project in Keil uVision
* Selecting 8051 MicroController
### Writing Code
Now inorder to write code we need a blank file , Click on `File` >> `New...` or can use keyboard shorcut `Ctrl`+`N`<br><br>
![](/images/img7.png) <br><br>

## Ascending-sorting
## Program
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
copy the code from above and paste it as shown in the figure below<br><br>
![](/images/img31.png) <br><br>
Now "Save As" the file , Click on `File` >> `Save As...`<br><br>
![](/images/img26.png) <br><br>
Give a file name to your code with extenstion *.asm, for eg code.asm , then `save` it.<br><br>
![](/images/img27.png) <br><br>
 In left corner you can see a `Project`Box , in that `Project` Box expand `Target 1`  , then Right click on  `Source Group 1`, Then click on `Add Existing Files to Group 'Source Group 1'...`<br><br>
![](/images/img11.png) <br><br>
Select the Files of type : `Asm Source file (*.s*;*.src*;*.a*)` , Select the file with extenstion *.asm , here in my case it is "code1.asm" , Click on `Add` and click on `Close`<br><br>
![](/images/img12.png) <br><br>
## Project Build
To Bulid Project , Click on `Project` >> `Build Target` or press on `F7` key<br><br>
![](/images/img13.png) <br><br>
If the Build is successful there will not be any error or any warning  as shown in the figure below , else verify the code and rebuild it.<br><br>
![](/images/img14a.png) <br><br>
## Debug and Run Code
Next step is to debug the code , For that click on `Debug` >> `Start/Stop Debug Session` or press on `Ctrl`+`F5`<br><br>
![](/images/img15.png) <br><br>
After Entering to debug , you will have a similar screen as shown in the figure below<br><br>
![](/images/img21.png) <br><br>
Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img23.jpg) <br><br>
now type Address : ```x:4300h``` as shown in image below<br><br>
![](/images/img16.png) <br><br>
Change the values as shown in image below , Inorder to alter value , Double-Click on it >> Change Value [ `11` : `08` , `D6` : `FE` , `01` : `05` : `56` : `34` : `66` : `77`]<br> >> Press `Enter`<br><br> 
![](/images/img30.png) <br><br>
Next step is to Run the code , For that click on `Debug` >> `Run` or press on `F5` or click "Run" button highlighted in green color<br><br>
![](/images/img22.jpg) <br><br>
After a few seconds we need to Stop running the code , For that click on `Debug` >> `Stop`  or click "Stop" button highlighted in red color<br><br>
![](/images/img18.jpg) <br><br>
## Output
From the image below we can see a series of data in ascending order  <br><br>
![](/images/img33.png) <br><br>
Before Closing the Keil uVision We need to stop Debugging , For that click on `Debug` >> `Start/Stop Debug Session` or press on `Ctrl`+`F5`, Then close it<br><br> 
![](/images/img15.png) <br><br><br><br>

# Descending-sorting
## Program
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
copy the code from above and paste it as shown in the figure below<br><br>
![](/images/img34.png) <br><br>
Now "Save As" the file , Click on `File` >> `Save As...`<br><br>
![](/images/img26.png) <br><br>
Give a file name to your code with extenstion *.asm, for eg code.asm , then `save` it.<br><br>
![](/images/img27.png) <br><br>
 In left corner you can see a `Project`Box , in that `Project` Box expand `Target 1`  , then Right click on  `Source Group 1`, Then click on `Add Existing Files to Group 'Source Group 1'...`<br><br>
![](/images/img11.png) <br><br>
Select the Files of type : `Asm Source file (*.s*;*.src*;*.a*)` , Select the file with extenstion *.asm , here in my case it is "code1.asm" , Click on `Add` and click on `Close`<br><br>
![](/images/img12.png) <br><br>
## Project Build
To Bulid Project , Click on `Project` >> `Build Target` or press on `F7` key<br><br>
![](/images/img13.png) <br><br>
If the Build is successful there will not be any error or any warning  as shown in the figure below , else verify the code and rebuild it.<br><br>
![](/images/img14a.png) <br><br>
## Debug and Run Code
Next step is to debug the code , For that click on `Debug` >> `Start/Stop Debug Session` or press on `Ctrl`+`F5`<br><br>
![](/images/img15.png) <br><br>
After Entering to debug , you will have a similar screen as shown in the figure below<br><br>
![](/images/img21.png) <br><br>
Locate "Memory 1" tab ,double click inside "Address" box<br><br>
![](/images/img23.jpg) <br><br>
now type Address : ```x:4300h``` as shown in image below<br><br>
![](/images/img16.png) <br><br>
Change the values as shown in image below , Inorder to alter value , Double-Click on it >> Change Value [ `11` : `08` , `D6` : `FE` , `01` : `05` : `56` : `34` : `66` : `77`]<br> >> Press `Enter`<br><br> 
![](/images/img30.png) <br><br>
Next step is to Run the code , For that click on `Debug` >> `Run` or press on `F5` or click "Run" button highlighted in green color<br><br>
![](/images/img22.jpg) <br><br>
After a few seconds we need to Stop running the code , For that click on `Debug` >> `Stop`  or click "Stop" button highlighted in red color<br><br>
![](/images/img18.jpg) <br><br>
## Output
From the image below we can see a series of data in descending order <br><br>
![](/images/img33.png) <br><br>
Before Closing the Keil uVision We need to stop Debugging , For that click on `Debug` >> `Start/Stop Debug Session` or press on `Ctrl`+`F5`, Then close it<br><br> 
![](/images/img15.png) <br><br>

