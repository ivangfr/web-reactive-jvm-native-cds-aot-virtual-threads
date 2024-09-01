package com.ivanfranchin.micronautgreetingsapireactive.service;

import io.micronaut.context.annotation.Value;
import jakarta.inject.Singleton;
import reactor.core.publisher.Mono;

import java.time.Duration;
import java.util.concurrent.ThreadLocalRandom;

@Singleton
public class GreetingsService {

    private static final String[] greetingWord = new String[]{"Hello", "Hi", "Olá", "Oi", "Hallo"};

    @Value("${random-greeting.time-secs}")
    protected int timeSecs;

    public Mono<String> randomGreeting(String name) {
        return Mono.delay(Duration.ofSeconds(timeSecs))
                .map(aLong -> greetingWord[ThreadLocalRandom.current().nextInt(greetingWord.length)])
                .map(word -> "%s %s!".formatted(word, name));
    }
}