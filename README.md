# translator-sparql-notebook

**Jupyter Notebooks** to execute SPARQL queries to query knowledge graph for the *NCATS Translator* project.

Uses **SPARQLWrapper** and **pandas** for display.

## Run Jupyter Notebook

```shell
docker run -it -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v $PWD:/home/jovyan/ncats jupyter/datascience-notebook:latest
```

## Access

Use the token provided when the docker container is started:
http://localhost:8888/?token=MY_TOKEN