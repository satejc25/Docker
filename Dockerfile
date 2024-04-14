FROM centos                                                     #pull centos image
WORKDIR /opt                                                    #chnages directoy to cd and performs tasks there
RUN echo "My first docker file" > f1.txt                        #creates file and prints message
ENV myname Satej                                                #sets runtime variable ---> to run type on cmd # echo $myname -->o/p Satej
COPY f2.txt /opt                                                #copy file from host-machine to container
ADD test.tar.gz /opt                                            #unzip file test.tar.gz in container which is available in host-machine
