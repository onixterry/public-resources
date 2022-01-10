    ab -n 1000000 -c 3 http://(your-frontend-ip)/

    ab -n 1000000 -c 1000 http://(your-frontend-ip)/
	
	
	for i in {1..15};do curl -s -w "%{time_total} \n" -o /dev/null http://(your-frontend-ip)/page.html; done
	
	