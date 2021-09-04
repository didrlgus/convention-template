package com.example.conventiontemplate;

import com.example.conventiontemplate.foo.JavaFoo;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

class JavaFooTest {

    private final JavaFoo javaFoo = new JavaFoo();

    @Test
    public void partiallyCoveredHelloMethodTest() {
        String actual = javaFoo.callMe();
        assertEquals(actual, "hello world");
    }

}