
FROM debian12:ansible

RUN \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get -y autoremove && \
  apt-get -y install gcc python3-dev libkrb5-dev && \
  apt-get -y install python3-pip python3.11-venv && \
  python3 -m venv p3 && \
  . p3/bin/activate && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  apt-get -y install krb5-user && \
  pip3 install pywinrm && \
  pip3 install ansible

#ENTRYPOINT ["mysql"]

#RUN apk update && apk upgrade 
#apk add ansible && ssh-keygen

#ENV DEBIAN_FRONTEND=noninteractive


#RUN apt-get update && \
#  apt-get install -y gcc python-dev libkrb5-dev && \
#  apt-get install python3-pip -y && \
#  pip3 install --upgrade pip && \
#  pip3 install --upgrade virtualenv && \
#  pip3 install pywinrm[kerberos] && \
#  apt install krb5-user -y && \ 
#  pip3 install pywinrm && \
#  pip3 install ansible
