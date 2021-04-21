# 8051-Programming-Using-Keil-uVision
We are going to see to how to program 8051 MicroController using Keil uVision5
### Download Link :<a href = "https://www.keil.com/demo/eval/c51.htm"> Keil uVision5</a> <br><br>
## Creating a Project in Keil uVision <br><br>
When we open Keil uVision For first time we will be able to see ide as shown in figure below. <br><br>
![](/images/img1.png) <br><br>
To create a new 8051 project using Keil IDE, Click on the ' Project ' item on the IDE Menu bar and select ' New uVision Project... ' as shown in the above image.<br><br>
![](/images/img2.png) <br><br>
Now create a Folder to store your project and give a name to your Project files (*.uvproj), for eg exp1 (exp1.uvproj) , then `save` it.<br><br>
![](/images/img3.png) <br><br>
## Selecting 8051 MicroController
* After saving the project , a dialog box will appear to select a Device <br>
* Then type "at89c51" in search box  
* Click on `AT89C51` and click on `OK`<br><br>
![](/images/img4.png) <br><br>
You will get another dialog as shown below. Asking to copy STARTUP.A51, Click on `No`<br><br>
![](/images/img5.png) <br><br>
## Writing Code
Now inorder to write code we need a blank file , Click on `File` >> `New...` or can use keyboard shorcut `Ctrl`+`N`<br><br>
![](/images/img7.png) <br><br>
Write a code as shown in the figure below <br><br>
![](/images/img8.png) <br><br>
Now "Save As" the file , Click on `File` >> `Save As...`<br><br>
![](/images/img9.png) <br><br>
Give a file name to your code with extenstion *.asm, for eg code.asm , then `save` it.<br><br>
![](/images/img10.png) <br><br>
 In left corner you can see a `Project`Box , in that `Project` Box expand `Target 1`  , then Right click on  `Source Group 1`, Then click on `Add Existing Files to Group 'Source Group 1'...`<br><br>
![](/images/img11.png) <br><br>
Select the Files of type : `Asm Source file (*.s*;*.src*;*.a*)` , Select the file with extenstion *.asm , here in my case it is "code1.asm" , Click on `Add` and click on `Close`<br><br>
![](/images/img12.png) <br><br>
## Project Build
To Bulid Project , Click on `Project` >> `Build Target` or press on `F7` key<br><br>
![](/images/img13.png) <br><br>
If the Build is successful there will not be any error or any warning  as shown in the figure below , else verify the code and rebuild it. <br><br>
![](/images/img14a.png) <br><br>
## Debug and Run Code
Next step is to debug the code , For that click on `Debug` >> `Start/Stop Debug Session` or press on `Ctrl`+`F5`<br><br>
![](/images/img15.png) <br><br>
After Entering to debug , you will have a similar screen as shown in the figure below<br><br>
![](/images/img21.png) <br><br>
Next step is to Run the code , For that click on `Debug` >> `Run` or press on `F5` or click "Run" button highlighted in green color<br><br>
![](/images/img22.jpg) <br><br>
After a few seconds we need to Stop running the code , For that click on `Debug` >> `Stop`  or click "Stop" button highlighted in red color<br><br>
![](/images/img18.jpg) <br><br>
Before Closing the Keil uVision We need to stop Debugging , For that click on `Debug` >> `Start/Stop Debug Session` or press on `Ctrl`+`F5`, Then close it<br><br> 
![](/images/img15.png) <br><br>
# Assembly Language Programming experiments
* ### <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision/tree/master/Set-of-Data-Transfer">Data transfer/exchange between specified memory locations</a>
* ### <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision/tree/master/Largest_or_Smallest_of_a_Series">Largest/smallest from a series</a>
* ### <a href="https://github.com/pscretn/8051-Programming-Using-Keil-uVision/tree/master/Sorting-of-data(Ascending & Descending)">Sorting-of-data(Ascending%20%26%20Descending)</a>
