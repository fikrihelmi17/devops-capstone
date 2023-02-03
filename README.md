[![fikrihelmi17](https://circleci.com/gh/fikrihelmi17/devops-capstone.svg?style=svg)](https://circleci.com/gh/fikrihelmi17/devops-capstone)

## Summary of the Project

This is a Project for Capstone in the DevOps Engineer Nanodegree Program. This project allow me to apply the skills to operationalize a Machine Learning Microservice API.

This project has a pre-trained `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

---

## Instruction

### Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

---

## Files Content
1. app.py -> serves out predictions (inference) about housing prices through API calls
2. output_txt_files/docker_out.txt -> logs from app running in Docker
3. output_txt_files/kubernetes_out.txt -> logs from app running in Kubernetes
4. make_prediction.sh -> script for test the app
5. .circleci/config.yml -> script for CircleCI integration
6. run_docker.sh -> script for deploying app to Docker.
7. run_kubernetes.sh -> script for deploying app to Kubernetes.
8. upload_docker.sh -> script for uploading Docker image.