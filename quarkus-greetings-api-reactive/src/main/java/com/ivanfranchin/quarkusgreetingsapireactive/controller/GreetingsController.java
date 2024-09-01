package com.ivanfranchin.quarkusgreetingsapireactive.controller;

import com.ivanfranchin.quarkusgreetingsapireactive.service.GreetingsService;
import io.smallrye.mutiny.Uni;
import jakarta.ws.rs.DefaultValue;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.QueryParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.concurrent.atomic.AtomicInteger;

@Path("/greetings")
public class GreetingsController {

    private static final Logger log = LoggerFactory.getLogger(GreetingsController.class);
    private static final AtomicInteger counter = new AtomicInteger(1);

    static {
        log.info("Available processors (CPUs): {}", Runtime.getRuntime().availableProcessors());
    }

    private final GreetingsService greetingsService;

    public GreetingsController(GreetingsService greetingsService) {
        this.greetingsService = greetingsService;
    }

    @GET
    public Uni<String> greeting(@QueryParam("name") @DefaultValue("World") String name) {
        int id = counter.getAndIncrement();
        log.info("Request {} processed by {}", id, Thread.currentThread());
        return greetingsService.randomGreeting(name)
                .invoke(response -> log.info("Request {} resumed by {}", id, Thread.currentThread()));
    }
}
