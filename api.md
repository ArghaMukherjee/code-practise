General API Questions
What is an API? An API (Application Programming Interface) allows different software applications to communicate with each other by defining methods for requests and responses.

What is the difference between an API and a web service? A web service is a type of API that operates over a network, typically using HTTP. APIs can be local, web-based, or use other communication methods, whereas web services must operate over a network.

What is RESTful API? RESTful APIs follow the principles of REST (Representational State Transfer), a stateless architecture that uses standard HTTP methods to perform operations on resources.

What are the key principles of REST architecture?

Statelessness: Each request from a client contains all the necessary information.
Client-server architecture: Separation between the client and the server.
Cacheable: Responses should indicate whether they can be cached.
Uniform interface: A consistent method of interacting with resources (URIs, HTTP methods).
Layered system: A system should be designed with different layers to improve scalability and manageability.
What is SOAP, and how does it differ from REST? SOAP (Simple Object Access Protocol) is a protocol that relies on XML-based messaging and is more rigid. REST is more flexible, supports multiple data formats, and is easier to implement.

What are the main HTTP methods used in RESTful APIs?

GET: Retrieve a resource.
POST: Create a new resource.
PUT: Update an existing resource.
DELETE: Remove a resource.
PATCH: Partially update a resource.
What is the difference between POST and PUT methods in REST?

POST: Used to create a new resource. It can create multiple resources with the same URI.
PUT: Used to update an existing resource or create a resource if it does not exist (idempotent).
What is PATCH and when would you use it instead of PUT? PATCH is used to partially update a resource, whereas PUT replaces the entire resource.

What is the difference between a resource and a representation in REST?

Resource: The actual data or object being manipulated.
Representation: The format in which the resource is presented (e.g., JSON, XML).
What are RESTful endpoints? Endpoints are specific URLs where resources can be accessed or manipulated using HTTP methods.

What are the key status codes in HTTP?

200 OK: Request was successful.
201 Created: Resource was successfully created.
400 Bad Request: The request was invalid.
404 Not Found: The resource could not be found.
500 Internal Server Error: Server encountered an error.
What is a RESTful resource, and how is it identified? Resources in REST are identified by URIs (Uniform Resource Identifiers), which are accessible using standard HTTP methods.

What is HATEOAS in RESTful APIs? HATEOAS (Hypermedia As The Engine Of Application State) is a principle of REST where clients can dynamically navigate through the API by following hypermedia links.

What is idempotency in REST APIs? Idempotency means that performing the same operation multiple times yields the same result. GET, PUT, and DELETE are idempotent, whereas POST is not.

What is the difference between synchronous and asynchronous APIs?

Synchronous: The client waits for the server to complete processing and return a response.
Asynchronous: The client does not wait and continues execution. A response is received later.
What is versioning in APIs? API versioning is a way to manage changes without breaking existing clients. Strategies include URI versioning (/v1/resource), query parameters (?version=1), and custom headers.

What is rate limiting, and why is it important? Rate limiting restricts the number of API requests a client can make in a certain time frame to prevent abuse and ensure fair usage of resources.

What is API pagination? Pagination divides large datasets into smaller, more manageable chunks. Common methods include using query parameters (page, limit).

What is an API gateway? An API gateway is an intermediary between the client and server that handles requests, routing, security, and monitoring of API calls.

What is the difference between REST and GraphQL?

REST: Uses fixed endpoints, may lead to over-fetching or under-fetching data.
GraphQL: A query language that allows clients to request only the data they need, making it more flexible.
API Security
What is API authentication? Authentication verifies the identity of the client making the request using methods like API keys, OAuth, or JWT.

What is OAuth2, and how does it work? OAuth2 is a token-based authentication framework that allows third-party services to access resources on behalf of a user. It uses access tokens to grant access without sharing passwords.

What is the difference between OAuth2 and OpenID Connect? OpenID Connect is built on top of OAuth2 and adds authentication (identity verification), while OAuth2 primarily handles authorization.

What is JWT (JSON Web Token)? JWT is a token that encodes information about the user, which can be verified without querying the database. It’s often used in stateless authentication.

How do you secure an API?

Use HTTPS for secure communication.
Implement authentication and authorization (e.g., OAuth, JWT).
Validate input to prevent attacks (e.g., SQL Injection).
Apply rate limiting to prevent DDoS attacks.
Use API gateways for additional security.
What is CORS, and why is it important? Cross-Origin Resource Sharing (CORS) is a security feature that controls how resources are shared across different origins. It prevents unauthorized domains from accessing APIs.

What is API encryption, and how is it implemented? API encryption involves encrypting data during transmission (using TLS/SSL) to protect against eavesdropping or tampering.

What is a CSRF (Cross-Site Request Forgery) attack, and how can APIs prevent it? CSRF is an attack that tricks a user into submitting requests to an API without their consent. Preventive measures include anti-CSRF tokens and validating origin headers.

What is the role of API keys, and how do you manage them securely? API keys authenticate requests from clients. They should be kept secret, regularly rotated, and limited to specific endpoints.

What is two-factor authentication (2FA) in APIs? 2FA adds an extra layer of security by requiring a second factor (e.g., a one-time password or a phone app) in addition to the API key.

Design and Implementation
How do you design a RESTful API?

Identify the resources.
Design URLs for each resource.
Use appropriate HTTP methods.
Define status codes for responses.
Ensure statelessness.
Implement versioning and pagination if needed.
What is the difference between a monolithic and microservices architecture in the context of APIs?

Monolithic: One large codebase handling all services.
Microservices: Services are divided into small, independent APIs that communicate over the network.
What is an API contract, and how is it enforced? An API contract is a formal agreement specifying how an API should behave, including the input, output, and endpoints. Tools like OpenAPI (Swagger) help enforce and document this.

What is API mocking, and why is it used? Mocking simulates the behavior of an API for testing and development purposes before the actual API is ready.

What is Swagger (OpenAPI), and how is it used in API development? Swagger is an open-source framework for designing, building, and documenting APIs. It helps developers visualize and test APIs through generated documentation.

What is Postman, and how is it used in API testing? Postman is a tool used to test APIs by sending HTTP requests to various endpoints, inspecting responses, and automating testing.

What is the purpose of load testing an API? Load testing measures how an API performs under heavy usage, checking scalability, reliability, and response times. Tools like JMeter and Locust are commonly used.

What is API orchestration? API orchestration combines multiple APIs to perform a complex task by coordinating and managing the execution of APIs.

What is API monitoring? API monitoring tracks the performance, uptime, and errors of an API in real-time. Tools like Datadog or New Relic help ensure that APIs are operating optimally.

What is the role of caching in APIs? Caching improves performance by storing frequently requested data, reducing the load on the server. This can be achieved using HTTP headers like Cache-Control or tools like Redis.

SOAP-Specific Questions
What is SOAP, and how is it different from REST? SOAP is a protocol that uses XML-based messages and operates over multiple protocols (e.g., HTTP, SMTP). REST is simpler, more flexible, and supports various formats like JSON.

What are SOAP envelopes, headers, and body? A SOAP message is enclosed in an envelope that contains:

Header: Information for routing and processing the message.
Body: The actual content of the message (request/response).
What is WSDL (Web Services Description Language)? WSDL is an XML document that describes the endpoints, operations, and data types used by a SOAP API.

