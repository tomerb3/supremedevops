FROM centos:7
RUN yum -y update && \ 
    yum -y install sed && \
    yum clean all
COPY ./entry_script.sh /
RUN chmod +x /entry_script.sh
ENTRYPOINT [ "/entry_script.sh" ]
VOLUME ["/read-write"]
CMD ["filename", "fromtext", "totext"]
