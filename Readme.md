# Simple Web Page with Database Integration

## Overview
This project creates a simple web page that accepts HTTP GET requests and stores the timestamp of each request in a MySQL database.

## Prerequisites
- Docker and Docker Compose installed on your machine
- Siege load testing tool installed on your machine

## Project Setup

1. Clone the repository to your local machine.

2. Navigate to the project directory and run the following command to start the web server and the MySQL database:

   ```bash
   docker-compose up -d
    ```
3. Test the web page by sending a request to http://localhost:8080. The timestamp of the request should be stored in the database.

## Load Testing with Siege

Run Siege with different concurrency levels using the provided load_test.sh script:

   ```bash
   bash load_test.sh 10
   bash load_test.sh 25
   bash load_test.sh 50
   bash load_test.sh 100
   ```

## Load Test Results

More detailed results of siege output can be found in results.txt. 

<table>
  <thead>
    <tr>
      <th>Concurrency</th>
      <th>Resource Availability</th>
      <th>Avg Response Time</th>
      <th>Throughput</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>10</td>
      <td>100.00 %</td>
      <td>0.03 secs</td>
      <td>0.01 MB/sec</td>
    </tr>
    <tr>
      <td>25</td>
      <td>100.00 %</td>
      <td>0.11 secs</td>
      <td>0.01 MB/sec</td>
    </tr>
    <tr>
      <td>50</td>
      <td>100.00 %</td>
      <td>0.16 secs</td>
      <td>0.01 MB/sec</td>
    </tr>
    <tr>
      <td>100</td>
      <td>100.00 %</td>
      <td>0.31 secs</td>
      <td>0.01 MB/sec</td>
    </tr>
    <tr>
      <td>200</td>
      <td>100.00 %</td>
      <td>0.70 secs</td>
      <td>0.01 MB/sec</td>
    </tr>
  </tbody>
</table>
