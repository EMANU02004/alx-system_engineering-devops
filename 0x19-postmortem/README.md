Timeline<br>
I realized the error around 1300 hours (East Africa Time) when our Site Reliability Engineer saw the master server lagging in speed. Our engineers disconnected the master server web-01 for further system analysis and channelled all requests to client server web-02 and soled the problem.

Root cause and resolution<br>
The master server web-01 was connected to serve all requests, and it stopped functioning due to memory outage as a results of so many requests because during a previous test, the client server web-02 was disconnected temporarily for testing and was not connected to the load balancer afterwards.

Measures against such problem in future<br>
.One should choose the best loadbalancing algorithm for your programs<br>
.Always keep an eye on your servers to ensure they are running properly<br>
.Have back-up servers to prevent your program from completely going offline during an issue
