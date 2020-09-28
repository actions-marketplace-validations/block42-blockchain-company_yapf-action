FROM python:3

LABEL "com.github.actions.name"="YAPF Python Code Formatter"
LABEL "com.github.actions.description"="Run YAPF to format your python code."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="106a4e"
LABEL "repository"="https://github.com/block42-blockchain-company/yapf-action"
LABEL "homepage"="https://github.com/block42-blockchain-company/yapf-action"
LABEL "maintainer"="Mr-Rooftop"

RUN pip install --upgrade pip
RUN pip install yapf

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
