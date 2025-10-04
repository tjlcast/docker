``` bash
docker build -t ollama-nomic .
docker run -d -p 11434:11434 --gpus=all ollama-nomic
docker run -itd -p 11434:11434 --name=ollama-nomic ollama-nomic
docker run -itd -p 11434:11434 --name=ollama-nomic ollama/ollama:latest
```





## Best practice
``` bash
docker build -t ollama-nomic .
docker run -itd -p 11434:11434 --name=ollama-nomic ollama-nomic:latest
docker run -itd -p 11434:11434 `
--health-cmd="curl -f http://localhost:11434/api/tags || exit 1" `
--health-interval=3s `
--health-timeout=1s `
--health-start-period=3s `
--health-retries=3 `
--name=ollama-nomic ollama-nomic:latest
```








``` bash
docker run -itd -p 11434:11434 --name=ollama-nomic ollama/ollama:latest
ollama pull nomic-embed-text:latest
docker commit ollama-nomic ollama-nomic-with-model:latest
docker run -itd -p 11434:11434 --name=ollama-nomic ollama-nomic-with-model:latest
```


docker run -itd -p 11434:11434 `
--health-cmd="curl -f http://localhost:11434/api/tags || exit 1" `
--health-interval=3s `
--health-timeout=1s `
--health-start-period=3s `
--health-retries=3 `
--name=ollama-nomic ollama-nomic-with-model:latest
