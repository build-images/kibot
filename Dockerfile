FROM setsoft/kicad_auto:ki6
LABEL Description="Create Kibot docker image"
RUN git clone https://github.com/INTI-CMNB/KiBot.git /kibot
RUN apt-get update && apt-get -y install pip
RUN ls
WORKDIR /kibot

RUN cp /kibot/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
