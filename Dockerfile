FROM golang

WORKDIR /app

COPY go.mod go.sum /app/

RUN go mod download

COPY . .

RUN go build -o build/fizzbuzz

CMD ["./build/fizzbuzz", "serve"]