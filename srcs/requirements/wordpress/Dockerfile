FROM debian:buster

EXPOSE 9000

COPY ./tools/install_wp.sh .
RUN chmod +x install_wp.sh

CMD [ "./install_wp.sh"]
