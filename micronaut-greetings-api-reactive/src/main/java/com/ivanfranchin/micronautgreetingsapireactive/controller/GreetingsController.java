package com.ivanfranchin.micronautgreetingsapireactive.controller;

import com.ivanfranchin.micronautgreetingsapireactive.service.GreetingsService;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.QueryValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import reactor.core.publisher.Mono;

import java.util.concurrent.atomic.AtomicInteger;

@Controller("/greetings")
public class GreetingsController {

    private static final Logger log = LoggerFactory.getLogger(GreetingsController.class);
    private static final AtomicInteger counter = new AtomicInteger(1);

    private final GreetingsService greetingsService;

    public GreetingsController(GreetingsService greetingsService) {
        this.greetingsService = greetingsService;
    }

    @Get
    public Mono<String> greeting(@QueryValue(defaultValue = "World") String name) {
        int id = counter.getAndIncrement();
        log.info("Request {} processed by {}", id, Thread.currentThread());
        return greetingsService.randomGreeting(name)
                .doOnNext(response -> log.info("Request {} resumed by {}", id, Thread.currentThread()));
    }
}
