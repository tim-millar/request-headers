# Request-Headers Microservice

## Project Aims
The Request-Headers Microservice is a small project for Ruby-on-Rails, meant to exercise proper development workflow (version control, unit and integration testing, etc).

## Functionality
The microservice features a single controller action that renders a JSON object in response to GET requests to the homepage. The action retreives IP, language, and operating system information from the request headers and returns them in a JSON object.

## Example Usage:
`https://localhost:3000/`

## Example Output:
```
{
  ipaddress: "78.145.232.221",
  language: "en-GB",
  software: "X11; Linux x86_64"
}
```
