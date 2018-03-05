sonar-scanner-cli-docker
========================
image for running sonar analysis


Example Usage
-------------

```bash
docker run -it -v $PWD:/analyse -w /analyse checktheflow/sonar-scanner sonar-scanner [PARAMS](https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner)
```

Links
-----

- [GitHub](https://github.com/checktheflow/sonar-scanner-cli-docker)
- [sonarqube](https://docs.sonarqube.org/)
- [sonarqube scanner](https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner)


License
-------

Released under the MIT License.
