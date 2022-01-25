# 基于pyhon基础镜像
FROM python:3.7
# 代码添加到code文件夹
RUN mkdir /code 
COPY ./run.sh /code
COPY ./arduino-index.py /code
COPY ./static /code/static
COPY ./templates /code/templates
COPY ./venv /code/venv
# 设置code文件夹为工作目录
WORKDIR /code

# 安装支持
RUN pip install flask
RUN cd /code 
CMD ["/bin/bash", "run.sh"]

