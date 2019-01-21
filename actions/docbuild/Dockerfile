FROM debian:9.5-slim

LABEL "com.github.actions.name"="Generate Net Documentation"
LABEL "com.github.actions.description"="Generate PDF of preamble markdown."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="red"

LABEL "maintainer"="jcsmith <juicewvu@gmail.com>"

RUN apt install pandoc

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
