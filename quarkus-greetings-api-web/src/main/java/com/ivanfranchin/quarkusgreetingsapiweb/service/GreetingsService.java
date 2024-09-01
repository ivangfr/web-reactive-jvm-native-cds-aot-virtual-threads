package com.ivanfranchin.quarkusgreetingsapiweb.service;

import jakarta.enterprise.context.ApplicationScoped;
import org.eclipse.microprofile.config.inject.ConfigProperty;

import java.util.concurrent.ThreadLocalRandom;

@ApplicationScoped
public class GreetingsService {

    private static final String[] greetingWord = new String[]{"Hello", "Hi", "Olá", "Oi", "Hallo"};

    @ConfigProperty(name = "random-greeting.time-secs")
    private int timeSecs;

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