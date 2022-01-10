#! /bin/bash
  apt update
  apt -y install apache2
  curl "http://metadata.google.internal/computeMetadata/v1/instance/hostname"   -H "Metadata-Flavor: Google" > /var/www/html/hostname.txt
  curl "https://raw.githubusercontent.com/onixterry/public-resources/main/gcp/lb-testing/test_page_top.html" > /var/www/html/test_page_top.html
  curl "https://raw.githubusercontent.com/onixterry/public-resources/main/gcp/lb-testing/test_page_bottom.html" > /var/www/html/test_page_bottom.html
  cat /var/www/html/test_page_top.html /var/www/html/hostname.txt /var/www/html/test_page_bottom.html > /var/www/html/index.html
