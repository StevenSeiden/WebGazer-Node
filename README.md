# WebGazer Node
This project is using [http://webgazer.cs.brown.edu]() and has been modified for our purposes.

## How to get started
This project requires [node](https://nodejs.org/en/download/) to be installed locally in order to run.

### macOS/Linux

To prepare this project, run the following into the terminal:

	git clone https://github.com/StevenSeiden/WebGazer-Node.git
	cd WebGazer-Node
	chmod +x run.sh
	
To run this project, open the folder that the project is stored in using your terminal (using the cd command) and run the following:
	
	./run.sh
	
Running this script should open a window in your browser. If this does not happen, open your browser and navigate to [http://localhost:3003](http://localhost:3003).
	
### Windows
First, go to [https://github.com/StevenSeiden/WebGazer-Node/](https://github.com/StevenSeiden/WebGazer-Node/blob/main/run.sh) and click the green "Code" button in the upper right of the screen. Then click "Download ZIP". Save this file, and when the download has completed, extract the contents of the ZIP file.

To run this project, open the folder that the project is stored in  within the command prompt (using the cd command). The path should look something like this: 
`C:\Users\user\Downloads\WebGazer-Node-main\WebGazer-Node-main\`


Finally, run the following:

	node app.js
	
Then open your browser and navigate to [http://localhost:3003](http://localhost:3003).


## Using the eye tracker

Once the tracker is setup, the algorithm may need to be calibrated. To do so, simply move your cursor to the area that you are gazing at and click. The more times you do this, the more accurate the tracking will be. Try looking at different areas on your screen so that the algorithm has an idea of where your entire screen is.

To begin recording data, press `1`. When you are done recording data, press `2`. Data is stored in the experiment folder within the project folder (.../WebGazer-Node/experiment), and catagorized by date. **This folder will need to be created by the user before data collection can start.** Data will not be stored otherwise.