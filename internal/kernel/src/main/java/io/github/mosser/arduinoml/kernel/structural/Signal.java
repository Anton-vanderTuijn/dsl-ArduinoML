package io.github.mosser.arduinoml.kernel.structural;

public enum Signal {
    HIGH("HIGH"),
    LOW("LOW");

    private final String value;

    Signal(String value) {
        this.value = value;
    }

    public String getValue() {
        return value;
    }
}
