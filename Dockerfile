FROM hassanamin994/node_ffmpeg
WORKDIR /audio-processor-service

COPY . .
RUN npm install


EXPOSE 4000
CMD [ "npm", "run", "docker:prod"]
HEALTHCHECK --start-period=30s --interval=2m CMD wget --quiet --tries=1 localhost:4000/health  -O /dev/null || exit 1