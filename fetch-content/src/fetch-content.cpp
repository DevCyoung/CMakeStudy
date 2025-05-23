// MIT License
//
// Copyright (c) 2023 Daemyung Jang
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#include <cstdlib>
#include <iostream>
#include <sstream>
#include <spdlog/spdlog.h>
#include <Poco/Net/HTTPClientSession.h>
#include <Poco/Net/HTTPRequest.h>
#include <Poco/Net/HTTPResponse.h>
#include <Poco/StreamCopier.h>

int main(int argc, char* argv[]) {
	spdlog::info("Hello Fetch Content!");
    spdlog::apply_all
	try {
        Poco::Net::HTTPClientSession session("www.google.com");
        Poco::Net::HTTPRequest request(Poco::Net::HTTPRequest::HTTP_GET, "/");
        session.sendRequest(request);

        Poco::Net::HTTPResponse response;
        std::istream& responseStream = session.receiveResponse(response);
        std::stringstream ss;
        Poco::StreamCopier::copyStream(responseStream, ss);

        spdlog::info("{} {}", response.getStatus(), response.getReason());
        spdlog::info("{}", ss.str());
    }
    catch (std::exception& e) {
    	spdlog::critical("Exception: {}", e.what());
    }

	return EXIT_SUCCESS;
}