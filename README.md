## python-workspace

This is Dom's personal python workspace based on the `kaggle/python` Docker image

## prerequisites
1. Basic working knowledge of Git is helpful

## quick start
1. Install [Virtualbox](https://www.virtualbox.org/)
2. Install [Docker](https://docs.docker.com/docker-for-mac/)
3. Follow [remaining instructions from Kaggle](http://blog.kaggle.com/2016/02/05/how-to-get-started-with-data-science-in-containers/)
4. Edit the `kjupyter()` entry in your `.bashrc` or `.bash_profile` as follows:
``` bash
kjupyter() {
  (sleep 3 && open "http://$(docker-machine ip docker2):8888")&
  docker run -v $PWD:/tmp/working -w=/tmp/working -p 8888:8888 --rm -it kaggle/python jupyter notebook --no-browser --ip="0.0.0.0/" --notebook-dir=/tmp/working
}
```
5. Execute `kjupyter` from bash
