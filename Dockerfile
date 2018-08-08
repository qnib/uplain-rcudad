FROM qnib/uplain-cuda8
ENV RCUDA_PROM_PORT=8081

RUN echo "# init-plain: $(/usr/local/bin/go-github rLatestUrl --ghorg qnib --ghrepo go-rcudad --regex 'go-rcudad' --limit 1)" \
 && wget -qO /usr/local/bin/go-rcudad "$(/usr/local/bin/go-github rLatestUrl --ghorg qnib --ghrepo go-rcudad --regex 'go-rcudad' --limit 1)"
COPY docker/start.sh /opt/qnib/bin/start.sh
CMD ["/opt/qnib/bin/start.sh"]
