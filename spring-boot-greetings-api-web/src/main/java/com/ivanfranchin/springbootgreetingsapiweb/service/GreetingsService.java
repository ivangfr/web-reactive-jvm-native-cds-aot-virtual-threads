package com.ivanfranchin.springbootgreetingsapiweb.service;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.util.concurrent.ThreadLocalRandom;

@Service
public class GreetingsService {

    private static final String[] greetingWord = new String[]{"Hello", "Hi", "Olá", "Oi", "Hallo"};

    @Value("${random-greeting.time-secs}")
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