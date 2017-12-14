FROM moss/xelatex
MAINTAINER Yi Wang <yi.wang.2005@gmail.com>

RUN apt-get update && apt-get install -y pandoc

COPY ./pandoc_all.bash /root/

CMD ["/root/pandoc_all.bash"]
