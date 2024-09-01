package com.ivanfranchin.micronautgreetingsapiweb.controller;

import com.ivanfranchin.micronautgreetingsapiweb.service.GreetingsService;
import io.micronaut.http.annotation.Controller;
import io.micronaut.http.annotation.Get;
import io.micronaut.http.annotation.QueryValue;
import io.micronaut.scheduling.TaskExecutors;
import io.micronaut.scheduling.annotation.ExecuteOn;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.concurrent.atomic.AtomicInteger;

@Controller("/greetings")
public class GreetingsController {

    private static final Logger log = LoggerFactory.getLogger(GreetingsController.class);
    private static final AtomicInteger counter = new AtomicInteger(1);

    private final GreetingsService greetingsService;

    public GreetingsController(GreetingsService greetingsService) {
        this.greetingsService = greetingsService;
    }

    @ExecuteOn(TaskExecutors.IO)
    @Get
    public String greeting(@QueryValue(defaultValue = "World") String name) {
        int id = counter.getAndIncrement();
        log.info("Request {} processed by {}", id, Thread.currentThread());
        String greeting = greetingsService.randomGreeting(name);
        log.info("Request {} resumed by {}", id, Thread.currentThread());
        return greeting;
    }
}
