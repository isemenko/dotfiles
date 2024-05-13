export EDITOR='subl'
export SLIMERJSLAUNCHER=/Applications/Firefox.app/Contents/MacOS/firefox

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/CurrentJDK/Contents/Home
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=~/.sdkman/candidates/java/current
if [ -d $JAVA_HOME ]; then
  export JAVA_HOME
fi

export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.12.0/libexec"
#export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export AWS_ELB_HOME="/usr/local/Cellar/elb-tools/1.0.23.0/libexec"
export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.14.001/libexec"
export EC2_AMITOOL_HOME="/usr/local/Cellar/ec2-ami-tools/1.4.0.9/libexec"
export AWS_SNS_HOME="/usr/local/Cellar/aws-sns-cli/2013-09-27/libexec"
