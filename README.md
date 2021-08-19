## gpu_docker
This repo provides an example for configuring a GPU inside Docker. See the article [Using GPUs in VS Code Dev Containers](http://localhost:8501/?content=2) for additional details. 

### Usage
#### VS Code Dev Container
To use use a VS Code dev container, open the project in VS code, click the "Open a Remote Window" icon in the bottom left corner, and select "Re-open in Container". Once the container has started, run the following targets from the Makefile within the container:
    
    make installs-deps
    make run-jupyterlab

#### Standalone Docker Container
To use as a standalone Docker container, run the following target from the Makefile:
    
    make run-docker

#### Testing
Browse the the Jupyter Lab URL (logged in the termail) and open the test_gpu.ipynb notebook. Run the first cell. If the cell output is `True`, you are ready to use your GPU inside the notebook.