package io.github.mosser.arduinoml.kernel.structural;

public enum MathOperator implements Operators {
    EQUAL("=="),
    NOT_EQUAL("!="),
    GREATER(">"),
    GREATER_OR_EQUAL(">="),
    LESS("<"),
    LESS_OR_EQUAL("<="),
    ;

    private String value;

    MathOperator(String value) {
        this.value = value;
    }

    @Override
    public String getValue() {
        return value;
    }
}
