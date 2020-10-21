FROM msoap/shell2telegram
# may be install some alpine packages:
RUN apk add --no-cache git bash curl wget unzip unrar zip tar
ENV TB_TOKEN=1149415477:AAGkX3eaqpD45IDzNStCKPYJyFVN4HDcsTo
CMD ["/date", "date"]
