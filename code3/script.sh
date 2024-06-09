sudo yum install -y httpd
sudo systemctl start httpd 
sudo systemctl enable httpd 
echo '<h1>Deployed via Terraform and Rico</h1>' | sudo tee /var/www/html/index.html