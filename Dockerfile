FROM scratch
ADD vulcanizerd /vulcanized
ENTRYPOINT ["/vulcanized"]
