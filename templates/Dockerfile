FROM {{= fp.config.base.from }}
USER root
{{? fp.config.base.user }}
{{= fp.block("user-" + fp.param.base) || ''}}
{{?}}
RUN mkdir -p /app/data && \
  chmod 1777 /app/data
ENV JAVA_APP_DIR=/app \
  JAVA_DATA_DIR=/app/data
{{= fp.block("java-pkg") || ''}}
{{= fp.block("run-java-sh","copy",{dest: "/app"}) }}
{{? fp.config.base.user }}
# Run under user "{{= fp.config.base.user}}"
RUN chown -R {{= fp.config.base.user}} /app
USER {{= fp.config.base.user }}
{{?}}
ENV PATH=$JAVA_HOME/bin:$PATH
WORKDIR /app
CMD [ "/app/run-java.sh" ]