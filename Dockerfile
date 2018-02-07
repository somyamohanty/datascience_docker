FROM ubuntu:latest

# Update
RUN apt-get update
RUN apt-get install -y python python-pip wget

RUN pip install --upgrade pip

# Create a directory for requirements
RUN mkdir /requirements
COPY requirements.txt /requirements
WORKDIR /requirements

# Install the dependencies
RUN pip install -r requirements.txt

VOLUME /notebooks
WORKDIR /notebooks

# Create a notebook directory
COPY /Ipy_intro /notebooks



EXPOSE 8888

ADD notebook.sh /

CMD ["/notebook.sh"]