FROM openjdk:latest
RUN unzip -d svc /target/universal/myfirstplayinscala-1.0-SNAPSHOT.zip
RUN mv svc/*/* svc/
RUN rm svc/bin/*.bat
RUN mv svc/bin/* svc/bin/start
WORKDIR /target/universal/myfirstplayinscala-1.0-SNAPSHOT/myfirstplayinscala-1.0-SNAPSHOT
ADD target /target
RUN ["chown", "-R", "daemon:daemon", "."]
USER daemon
ENTRYPOINT ["bin/myfirstplayinscala"]
CMD []