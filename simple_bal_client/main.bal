import ballerina/http;

service / on new http:Listener(9090) {
    resource function get call() returns string|error {
        http:Client clientEp = check new("https://9984a662-694d-4b14-93c3-21ae945ba5ba-dev-internal.e1-us-east-azure.internal.choreoapis.dev/asqm/simplehttp/endpoint-9090-803/v1.0/");
        string resp = check clientEp->get("/greeting");
        return resp;
    }
}
