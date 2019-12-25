FROM nikolaik/python-nodejs:python3.6-nodejs12	


LABEL version="1.0.0"
LABEL repository="https://github.com/eyalengel-pagaya/serverless-github-action-python"
LABEL homepage="https://github.com/eyalengel-pagaya/serverless-github-action-python"
LABEL maintainer="eyalengel-pagaya <eyalengel@pagaya.com>"

LABEL "com.github.actions.name"="Serverless"
LABEL "com.github.actions.description"="Wraps the Serverless Framework to enable common Serverless commands."
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="red"
RUN apt install libpq-dev python3-dev
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt
RUN npm install 
RUN npm install serverless-plugin-warmup
RUN npm install serverless-python-requirements

RUN npm i -g serverless@1.53.0
ENTRYPOINT ["serverless"]
