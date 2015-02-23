# swidbox

```json
{
  "swagger": "2.0",
  "info": {
    "title": "SwidBox _conduct API",
    "description": "This is the RESTFULL API that _conduct will provide",
    "version": "1.0.0"
  },
  "host": "localhost",
  "schemes": [
    "http"
  ],
  "basePath": "/api",
  "produces": [
    "application/json"
  ],
  "paths": {
    "/metaset": {
      "get": {
        "summary": "Gets the information about a metaset",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "responses": {
          "200": {
            "description": "@todo All is fine"
          }
        },
        "parameters": [
          {
            "in": "query",
            "name": "metaid",
            "description": "The metaid. If ommitted all the sets will be returned",
            "required": false,
            "type": "string"
          }
        ]
      },
      "post": {
        "summary": "Creates a new metaset",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "responses": {
          "200": {
            "description": "@todo All is fine"
          }
        },
        "parameters": [
          {
            "in": "query",
            "name": "metaid",
            "description": "The metaid name",
            "required": true,
            "type": "string"
          },
          {
            "in": "query",
            "name": "token",
            "description": "the usertoken associated",
            "required": true,
            "type": "string"
          }
        ]
      }
    },
    "/token": {
      "get": {
        "summary": "Gets all the tokens created",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "responses": {
          "200": {
            "description": "Details on the token or the list of tokens"
          }
        },
        "parameters": [
          {
            "in": "query",
            "name": "id",
            "description": "If not passed the list of all tokens will be returned",
            "required": false,
            "type": "string"
          }
        ]
      },
      "post": {
        "summary": "Adds a new token",
        "consumes": [
          "application/json"
        ],
        "produces": [
          "application/json"
        ],
        "responses": {
          "200": {
            "description": "the happy result of operation"
          }
        },
        "parameters": [
          {
            "in": "query",
            "name": "id",
            "description": "The token id required",
            "required": true,
            "type": "string"
          }
        ]
      },
      "delete": {
        "summary": "Deletes a token",
        "responses": {
          "200": {
            "description": "the happy result operation"
          }
        }
      }
    }
  }
}
```
