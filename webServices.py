import httplib,urllib
import sys
def push():
    if(len(sys.argv) == 7):
        params = urllib.urlencode({'field1': sys.argv[1], 'field2': sys.argv[2], 'field3': sys.argv[3],'field4': sys.argv[4],'field5': sys.argv[5],'field6': sys.argv[6], 'key':'L7ESGOM5GYFVZ3Z6'})
        headers = {"Content-tupe": "application/x-www-form-urlencoded","Accept": "text/plain"}
        conn = httplib.HTTPConnection("api.thingspeak.com:80")                
        try:
                conn.request("POST", "/update", params, headers)
                response = conn.getresponse()
                print response.reason
                data = response.read()
                conn.close()
        except:
                print "Connection Failed"
    else:
        print "6 Parameters Required"
if __name__ == "__main__":
    push()
