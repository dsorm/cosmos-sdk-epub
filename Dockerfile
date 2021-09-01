FROM ubuntu:20.04
WORKDIR /tmp/
RUN apt-get update && apt-get install pandoc git -y
RUN git clone https://github.com/cosmos/cosmos-sdk
WORKDIR /tmp/cosmos-sdk/docs
RUN (find $(pwd) | grep .md) | xargs cat | pandoc -o book.epub --metadata title="Cosmos SDK Docs"                                                                                                                
