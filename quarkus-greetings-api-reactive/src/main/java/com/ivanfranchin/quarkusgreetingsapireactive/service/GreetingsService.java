package com.ivanfranchin.quarkusgreetingsapireactive.service;

import io.smallrye.mutiny.Uni;
import jakarta.enterprise.context.ApplicationScoped;
import org.eclipse.microprofile.config.inject.ConfigProperty;

import java.time.Duration;
import java.util.concurrent.ThreadLocalRandom;

@ApplicationScoped
public class GreetingsService {

    private static final String[] greetingWord = new String[]{"Hello", "Hi", "Olá", "Oi", "Hallo"};

    @ConfigProperty(name = "random-greeting.time-secs")
    private int timeSecs;

    public Uni<String> randomGreeting(String name) {
        return Uni.createFrom().item(() -> greetingWord[ThreadLocalRandom.current().nextInt(greetingWord.length)])
                .onItem().delayIt().by(Duration.ofSeconds(timeSecs))
                .onItem().transform(word -> "%s %s!".formatted(word, name));
    }
}