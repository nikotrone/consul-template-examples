# consul-template-examples
Consul template is a templating language from Hashicorp used to create file templates (usually config files) Collection of consul-template examples for common issues.

It uses a fork of Golang templating language which may present a steep initial learning curve, so the need of a simple sandbox to toy with.

We also include a Dockerfile to run the code and print the output file. To run the container just name your file `test.ctmpl` and type in the command line 
```docker build .```

The Docker container downloads a compiled binary of consul-template, parses the template and cat the result to the command line
