package com.demoecs.ktecs.controllers

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

public class JsonResponse {
    var version: String

    constructor(strArg: String) {
        this.version = strArg
    }
}

@RestController
@RequestMapping("/")
class HelloController {

    @GetMapping("/")
    fun helloWorld(): String {
        return "Hello, this application has been dockerized V2."
    }

    @GetMapping("/version")
    fun version(): JsonResponse {
        return JsonResponse("v2")
    }
}
