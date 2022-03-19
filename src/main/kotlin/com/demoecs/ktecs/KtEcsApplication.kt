package com.demoecs.ktecs

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class KtEcsApplication

fun main(args: Array<String>) {
    runApplication<KtEcsApplication>(*args)
}
