# consul-template-examples
Consul template is a templating language from Hashicorp used to create file templates (usually config files) Collection of consul-template examples for common issues.

It uses a fork of (https://golang.org/pkg/text/template/)[Golang templating language] which may present a steep initial learning curve, so the need of a simple sandbox to toy with.

We also include a Dockerfile to run the code and print the output file. To run the container just name your file `test.ctmpl` and type in the command line 
```docker build .```

The Docker container downloads a compiled binary of consul-template, parses the template and cat the result to the command line

## Command Line Arguments
You can provide some arguments during the build process with the option `--build-arg`.
The resulting build command should look something like this:
```sh
docker build --build-arg INPUT_FILE=remove_evaluated_lines .
```

The available options are:

- `INPUT_FILE=remove_evaluated_lines`: specifies which input file to be compiled. Default test
