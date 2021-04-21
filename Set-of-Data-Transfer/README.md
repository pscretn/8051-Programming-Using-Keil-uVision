# Set-of-Data-Transfer
Here in this program , we will transfer a set of data to a specified memory location<br>
## <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision">Follow Steps from Main page</a>
* Creating a Project in Keil uVision
* Selecting 8051 MicroController 
### Writing Code
Now inorder to write code we need a blank file , Click on `File` >> `New...` or can use keyboard shorcut `Ctrl`+`N`<br><br>
![](/images/img7.png) <br><br>
# Program
```Assembly
  
$mod51
org 00h
mov dptr,#4300h
mov r2,#0ah
mov r1,#50h
mov r0,#00h
loop:mov dpl,r0
movx a,@dptr
inc r0
mov dpl,r1
movx @dptr,a
inc r1
djnz r2,loop
l1:sjmp l1
end
```

copy the code from above and paste it as shown in the figure below <br><br>
![](/images/img8.png) <br><br>
Now "Save As" the file , Click on `File` >> `Save As...`<br><br>
![](/images/img9.png) <br><br>
Give a file name to your code with extenstion *.asm, for eg code.asm , then `save` it.<br><br>
![](/images/img10.png) <br><br>
 In left corner you can see a `Project`Box , in that `Project` Box expand `Target 1`  , then Right click on  `Source Group 1`, Then click on `Add Existing Files to Group 'Source Group 1'...`<br><br>
![](/images/img11.png) <br><br>
Select the Files of type : `Asm Source file (*.s*;*.src*;*.a*)` , Select the file with extenstion *.asm , here in my case it is "code1.asm" , Click on `Add` and click on `Close`<br><br>
![](/images/img12.png) <br><br>
### Project Build
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
Change the values as shown in image below , Inorder to alter value , Double-Click on it >> Change Value [`00` : `11` , `00` : `22` , `00` : `33`......]<br> >> Press `Enter`<br><br>
![](/images/img17.png) <br><br>
Next step is to Run the code , For that click on `Debug` >> `Run` or press on `F5` or click "Run" button highlighted in green color<br><br>
![](/images/img22.jpg) <br><br>
After a few seconds we need to Stop running the code , For that click on `Debug` >> `Stop`  or click "Stop" button highlighted in red color<br><br>
![](/images/img18.jpg) <br><br>
Locate "Memory 1" tab ,double click inside "Address" box<br>
## Output
now type Address : ```x:4350h``` , From the image below we can see that all data are transferred to other memory location<br><br>
![](/images/img19.png) <br><br>
Before Closing the Keil uVision We need to stop Debugging , For that click on `Debug` >> `Start/Stop Debug Session` or press on `Ctrl`+`F5`, Then close it<br><br> 
![](/images/img15.png) <br><br>
