#Kubectl installation using chocolately 
#Run as administrator !!!!
Set-ExecutionPolicy Bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install kubernetes-cli -y
kubectl version