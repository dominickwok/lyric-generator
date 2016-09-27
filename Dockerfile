FROM kaggle/python
MAINTAINER Dominic Kwok  <dominictskwok@gmail.com>

RUN pip install musixmatch
RUN pip install urlparse
RUN pip install bs4
