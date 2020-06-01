FROM centos:latest
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
RUN chmod +x kubectl
RUN mv kubectl /usr/bin/
RUN yum install openssh -y
RUN yum install httpd -y
COPY ca.crt /root/
COPY client.crt /root/ 
COPY client.key /root/
COPY config /root/.kube/
COPY index.html /var/www/html/  


