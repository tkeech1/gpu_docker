clean:
	rm -r .cache/ | true
	rm -r .local/ | true
	rm -r .ipython/ | true
	rm -r .jupyter/ | true

run-docker: clean
	docker build --no-cache -f ./.devcontainer/Dockerfile -t gpu_docker:latest .
	docker run -it -p 8888:8888 --workdir /home/python --gpus all --shm-size 2G -v $$PWD:/home/python/ --entrypoint /home/python/run_jupyterlab.sh gpu_docker:latest 

install-deps:
	python3.9 -m pip install -r requirements.txt

start-jupyterlab:
	jupyter-lab