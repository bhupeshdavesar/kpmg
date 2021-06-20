# Challenge -1
## Contains terraform modules to provision
Folders

Project

Network (vpc / subnet / firewall)

Resources (spanner / cloudsql / cluster)


# Challenge -2

Contains shell scripts to get meta data of a gcp cluster
## Prerequisite
gcloud sdk
cluster on gcp

### Steps to run
cd kpmg/Challenge-2

gcloud auth login
./getmetadata.sh <instance-id> <peojectId>
#### eg: 
`./get-metada.sh instance-1 wide-factor-317412`

Output will be generated in local file final-output.log
 
### This can also be run using terraform remote-exec using a file provisioner and a connection block
 
# Challenge -3

## Prerequisite
java8/ gradle

### Steps to run locally

cd kpmg/Challenge-3

./gradlew bootRun

Application will start at port 9080

Sample curl to test


`curl --location --request POST 'http://localhost:9080/challenge3' \
 --header 'Content-Type: application/json' \
 --data-raw '{
     "inputObject":"{“a”:{“b”:{“c”:”d”}}}",
     "key":"a/b"
 }'`
 
 
 Input output pair
 
 | InputObj                     | Key       | Output                  |
 | -----------                  | ------    |-----------              |
 | "{“a”:{“b”:{“c”:”d”}}}"      | "a"       | "{“a”:{“b”:{“c”:”d”}}}" |
 | "{“a”:{“b”:{“c”:”d”}}}"      | "a/b"     | {“c”:”d”}               |
 |"{“a”:{“b”:{“c”:”d”}}}"       |"a/b/c"    | ”d”                     |
 |"{“a”:{“b”:{“c”:”d”}}}"       |"a/b/c/d"  | No Match found          |
 | "{“a”:{“b”:{“c”:”d”}}}"      |"a/d"      |No Match found           |
 |"{“a”:{“b”:{“c”:”d”}}}"       | "a/"      | Invalid Input           |
 |"{“a”:{“b”:{“c”:”d”}}}"       | "/a"      |Invalid Input            |


