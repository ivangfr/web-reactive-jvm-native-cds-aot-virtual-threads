package com.ivanfranchin.springbootgreetingsapireactive.controller;

import com.ivanfranchin.springbootgreetingsapireactive.service.GreetingsService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Mono;

import java.util.concurrent.atomic.AtomicInteger;

@RestController
@RequestMapping("/greetings")
public class GreetingsController {

    private static final Logger log = LoggerFactory.getLogger(GreetingsController.class);
    private static final AtomicInteger counter = new AtomicInteger(1);

    private final GreetingsService greetingsService;

    public GreetingsController(GreetingsService greetingsService) {
        this.greetingsService = greetingsService;
    }

    @GetMapping
    public Mono<String> greeting(@RequestParam(required = false, defaultValue = "World") String name) {
        int id = counter.getAndIncrement();
        log.info("Request {} processed by {}", id, Thread.currentThread());
        return greetingsService.randomGreeting(name)
                .doOnNext(response -> log.info("Request {} resumed by {}", id, Thread.currentThread()));
    }
}