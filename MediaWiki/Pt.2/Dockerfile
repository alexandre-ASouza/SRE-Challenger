FROM ubuntu:18.04
RUN apt update && apt -y install curl
COPY count-script.sh .
RUN chmod u+x count-script.sh
CMD /count-script.sh