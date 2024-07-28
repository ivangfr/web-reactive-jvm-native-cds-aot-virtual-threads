package com.ivanfranchin.springbootgreetingsapireactive.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Mono;

import java.time.Duration;
import java.util.concurrent.ThreadLocalRandom;

@Service
public class GreetingsService {

    private static final String[] greetingWord = new String[]{"Hello", "Hi", "Olá", "Oi", "Hallo"};

    @Value("${random-greeting.time-secs}")
    private int timeSecs;

    public Mono<String> randomGreeting(String name) {
        return Mono.delay(Duration.ofSeconds(timeSecs))
                .map(aLong -> greetingWord[ThreadLocalRandom.current().nextInt(greetingWord.length)])
                .map(word -> "%s %s!".formatted(word, name));
    }
}