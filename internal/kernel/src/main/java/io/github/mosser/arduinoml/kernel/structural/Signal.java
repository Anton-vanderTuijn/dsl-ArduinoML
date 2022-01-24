package io.github.mosser.arduinoml.kernel.structural;

public enum Signal implements Operators {
    HIGH("HIGH"),
    LOW("LOW");

    private String value;

    Signal(String value) {
        this.value = value;
    }

    @Override
    public String getValue() {
        return value;
    }
}
