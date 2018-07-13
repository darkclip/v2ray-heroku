
FROM alpine:3.7

ENV CONFIG_JSON1={\"log\":{\"access\":\"\",\"error\":\"\",\"loglevel\":\"warning\"},\"inbound\":{\"protocol\":\"vmess\",\"port\": 
ENV CONFIG_JSON2=,\"settings\":{\"clients\":[{\"id\":\" 
ENV CONFIG_JSON3=\",\"alterId\":64},{\"id\":\" 
ENV CONFIG_JSON4=\",\"alterId\":64},{\"id\":\" 
ENV CONFIG_JSON5=\",\"alterId\":64},{\"id\":\" 
ENV CONFIG_JSON6=\",\"alterId\":64}],\"disableInsecureEncryption\":\"true\"},\"streamSettings\":{\"network\":\"ws\",\"wsSettings\":{\"path\":\"
ENV CONFIG_JSON7=\"}}},\"inboundDetour\":[],\"outbound\":{\"protocol\":\"freedom\",\"settings\":{}}} 

RUN mkdir -m 777 /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh 

CMD /entrypoint.sh
