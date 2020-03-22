#!/usr/bin/env sh

echo 'The following "npm" command builds your Node.js/React application for'
echo 'production in the local "build" directory (i.e. within the'
echo '"/var/jenkins_home/workspace/simple-node-js-react-app" directory),'
echo 'correctly bundles React in production mode and optimizes the build for'
echo 'the best performance.'
whoami;date
set -x
echo 'does not work - npm i @babel/core babel-loader @babel/preset-env @babel/preset-react @babel/plugin-proposal-numeric-separator --save-dev'
echo 'replaced npm run build with yarn run build'
yarn run build
set +x

echo 'The following "npm" command runs your Node.js/React application in'
echo 'development mode and makes the application available for web browsing.'
echo 'The "npm start" command has a trailing ampersand so that the command runs'
echo 'as a background process (i.e. asynchronously). Otherwise, this command'
echo 'can pause running builds of CI/CD applications indefinitely. "npm start"'
echo 'is followed by another command that retrieves the process ID (PID) value'
echo 'of the previously run process (i.e. "npm start") and writes this value to'
echo 'the file ".pidfile".'
set -x
echo 'replaced npm start & with yarn start &'
yarn start &
sleep 1
echo $! > .pidfile
set +x
curl http://localhost:5556
ping http://localhost:5556
wget http://localhost:5556
nslookup localhost
netstat -an
ps -a
docker-machine ip
cat /var/jenkins_home/workspace/simple-node-js-react-npm-app@tmp/durable-f63f1410/jenkins-result.txt
echo 'Now...'
echo 'Visit was http://localhost:3000 now http://localhost:5556 to see your Node.js/React application in action.'
echo '(This is why you specified the "args ''-p 3000:3000''" parameter when you'
echo 'created your initial Pipeline as a Jenkinsfile.)'
