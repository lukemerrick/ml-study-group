# Start with the official scipy-notebook
FROM jupyter/scipy-notebook:59b402ce701d

# Use pip to install some extra requirements
COPY requirements.txt $HOME/
RUN pip install -r requirements.txt
