# from rasa base image
FROM rasa/rasa:3.3.7
# copy all source and the Rasa generated model
COPY ./faq/ /app

# inform which port will run on
EXPOSE 5005

USER root

ENTRYPOINT []
ENV shell_mode false

RUN rasa train

# # launch script (rasa shell or rasa run)
# CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run -p 5006 --cors "*"; else rasa shell -p 5006; fi'


CMD sh -c 'if [ "$shell_mode" = false ]; then rasa run --enable-api --log-file rasa.log --debug -p 5005 --cors "*"; else rasa shell -p 5005; fi'