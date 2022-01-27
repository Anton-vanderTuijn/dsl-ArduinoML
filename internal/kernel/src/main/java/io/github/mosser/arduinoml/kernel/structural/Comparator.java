package io.github.mosser.arduinoml.kernel.structural;

public enum Comparator {
    EQUAL("=="),
    NOT_EQUAL("!="),
    GREATER(">"),
    GREATER_OR_EQUAL(">="),
    LESS("<"),
    LESS_OR_EQUAL("<="),
    ;

    private final String value;

    Comparator(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
