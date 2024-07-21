FROM ubuntu
RUN apt update && apt install fortune-mod cowsay netcat-openbsd -y
ENV PATH="/usr/games:${PATH}"
COPY wisecow.sh /
RUN chmod +x /wisecow.sh
EXPOSE 4499
CMD ["/wisecow.sh"]
