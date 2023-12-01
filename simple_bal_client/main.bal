import ballerina/http;

service / on new http:Listener(9090) {
    resource function get call() returns string|error {
        http:Client clientEp = check new("http://simplehttp-1723308082:9090/");
        string resp = check clientEp->get("/greeting");
        return resp;
    }
}
