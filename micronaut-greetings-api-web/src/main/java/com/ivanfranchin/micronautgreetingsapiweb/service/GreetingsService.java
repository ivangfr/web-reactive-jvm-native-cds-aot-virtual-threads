package com.ivanfranchin.micronautgreetingsapiweb.service;

import io.micronaut.context.annotation.Value;
import jakarta.inject.Singleton;

import java.util.concurrent.ThreadLocalRandom;

@Singleton
public class GreetingsService {

    private static final String[] greetingWord = new String[]{"Hello", "Hi", "Olá", "Oi", "Hallo"};

    @Value("${random-greeting.time-secs}")
    protected int timeSecs;

    public String randomGreeting(String name) {
        try {
            String word = greetingWord[ThreadLocalRandom.current().nextInt(greetingWord.length)];
            Thread.sleep(timeSecs * 1000L);
            return "%s %s!".formatted(word, name);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}