# grumpy
Docker container for Grumpy - Python to Golang transcompiler and runtime from Google

## Usage

* Place your Python files to a directory called "sample"

* Create docker-compose:

```yml
version: '3.7'
services:
  grumpy:
    build: .
    image: flaviostutz/grumpy
    volumes:
      - ./samples:/samples
    command: grumprun /samples/test.py
```
