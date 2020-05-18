conda install nodejs -y
conda install -c conda-forge xeus-python=0.7.1 ptvsd jupyterlab=2 -y
jupyter labextension update --all
conda upgrade jupyterlab -y
jupyter labextension install @jupyterlab/debugger

:: https://github.com/jupyterlab/jupyter-renderers#looking-for-plotly-extension
:: now our old plotly-version would break, so...
jupyter labextension uninstall @jupyterlab/plotly-extension
conda install -c plotly plotly==4.7.1 -y
conda install ipywidgets=7.5 -y
jupyter labextension install jupyterlab-plotly@4.7.1
jupyter labextension install @jupyter-widgets/jupyterlab-manager plotlywidget@4.7.1

jupyter lab build 