FROM circleci/node:12

RUN sudo apt-get update
RUN sudo apt-get install -y git ssh tar gzip ca-certificates curl wget perl postgresql-client
RUN sudo rm -rf /var/lib/apt/lists/*

RUN sudo curl -LO http://xrl.us/cpanm && sudo chmod +x cpanm
RUN sudo ./cpanm TAP::Parser::SourceHandler::pgTAP
