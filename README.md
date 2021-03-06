# translator-sparql-notebook

**Jupyter Notebooks** to execute SPARQL queries to query knowledge graph for the *NCATS Translator* project.

Uses **SPARQLWrapper** and **pandas** for display.

## Run Jupyter Notebook

```shell
docker run -it -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v PATH/TO/translator-sparql-notebook:/home/jovyan/ncats jupyter/datascience-notebook:latest
```

## Access

Use the token provided when the docker container is started: http://localhost:8888/?token=MY_TOKEN

## Install SPARQL Kernel

```bash
jupyter sparqlkernel install --user
```

## Deploy using Jupyterlab

This deployment install `sparqlkernel` from [jupyter_install.sh](https://github.com/vemonet/translator-sparql-notebook/blob/master/jupyter_install.sh)

```bash
docker run --rm -it -p 8888:8888 \
  -v /data/notebooks:/notebooks \
  -e PASSWORD="<your_secret>" \
  -e GIT_URL="https://github.com/vemonet/translator-sparql-notebook" \
  umids/jupyterlab:latest
```

> Access at http://localhost:8888