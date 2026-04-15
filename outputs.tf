output "instance_public_ip" {
  description = "Public IP address of the Jenkins instance"
  value = aws_instance.Jenkins-VM.public_ip
}

output "ssh_connection_command" {
  description = ""
  value = "ssh -i jenkins_private_key.pem ec2-user@${aws_insance.Jenkins-VM.public_ip}"
}

output "jenkins-vm_admin_paddword_command" {
  description = ""
  value = "ssh -i jenkins_private_key.pem ec2-user@${aws_instance.Jenkins-VM.public_ip} 'sudo cat /var/lib/jenkins/secrets/initialAdminPassword'"
}

output "jenkins-vm_url" {
  description = "URL to access Jenkins"
  value = "http://${aws_instance.Jenkins-VM.public_ip}:8080"
}