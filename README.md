# WebGazer Node
This project is using [http://webgazer.cs.brown.edu]() and has been modified for our purposes.

## How to get started
This project requires [node](https://nodejs.org/en/download/) to be installed locally in order to run.

To prepare this project, run the following into the terminal:

	git clone https://github.com/StevenSeiden/WebGazer-Node.git
	cd WebGazer-Node
	chmod +x run.sh
	
## Using the eye tracker
	
To run this project, open the folder that the project is stored in using your terminal (using the cd command) and run the following:
	
	./run.sh
	
Running this script should open a window in your browser. If this does not happen, open your browser and navigate to [http://localhost:3003](http://localhost:3003).

From here, the algorithm may need to be calibrated. To do so, simply move your cursor to the area that you are gazing at and click. The more times you do this, the more accurate the tracking will be. Try looking at different areas on your screen so that the algorithm has an idea of where your entire screen is.

To begin recording data, press `1`. When you are done recording data, press `2`. Data is stored in the experiment folder within the project folder, and catagorized by date.