# WROKING

# from rasa base image
FROM rasa/rasa:3.3.7
# copy all source and the Rasa generated model
COPY ./faq/ /app

# inform which port will run on
EXPOSE 5005

USER root

ENTRYPOINT []
ENV shell_mode false

RUN rasa train --data data/default/nlu.yml data/default/rules.yml -d data/default/domain.yml --out models --fixed-model-name default-model








# RUN - executed when image is builded and added to image part (seated to image)

# RUN rasa train --data data/default/nlu.yml data/default/stories.yml data/default/rules.yml -d data/default/domain.yml --out models --fixed-model-name default-model
# RUN rasa train --data data/hexaware/nlu.yml data/hexaware/stories.yml -d data/hexaware/domain.yml --out models --fixed-model-name hexaware-model
# RUN rasa train --data data/organization/nlu.yml data/organization/stories.yml -d data/organization/domain.yml --out models --fixed-model-name organization-model

# # launch script (rasa shell or rasa run)
# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run -p 5006 --cors "*"; else rasa shell -p 5006; fi'
# --auth-token 0123456789

# rasa run --enable-api -m models/<model-a>.tar.gz --port 12345
# rasa run --enable-api -m models/<model-b>.tar.gz --port 12346

# CMD - executed only when image is launched as container - when we use docker run below command will be overwritten

# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run -m models/models_chitchat.tar.gz -p 5005 --enable-api  --log-file rasa.log --debug --cors "*"; else rasa shell -p 5005; fi'
# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run -m models/models_organization.tar.gz -p 5006 --enable-api  --log-file rasa.log --debug --cors "*"; else rasa shell -p 5006; fi'


# RUN rasa train --data data/chitchat/nlu.yml data/chitchat/stories.yml -d data/chitchat/domain.yml --out models/models_chitchat
# # RUN rasa train

# # launch script (rasa shell or rasa run)
# # rasa shell -m models/model1.tar.gz
# # --auth-token 0123456789
# # --model models/model-1.tar.gz
# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run --model models/models_chitchat.tar.gz --log-file rasa.log --endpoints endpoints.yml --debug --enable-api -p 5005 --cors "*"; else rasa shell -p 5005; fi'
