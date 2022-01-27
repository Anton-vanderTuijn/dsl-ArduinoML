package io.github.mosser.arduinoml.kernel;

import io.github.mosser.arduinoml.kernel.generator.Visitable;
import io.github.mosser.arduinoml.kernel.generator.Visitor;
import io.github.mosser.arduinoml.kernel.structural.IBrick;
import io.github.mosser.arduinoml.kernel.structural.Task;

import java.util.ArrayList;
import java.util.List;

public class App implements INamedConcept, Visitable {

    private String name;
    private List<IBrick> bricks = new ArrayList<>();
    private List<Task> tasks = new ArrayList<>();

    public List<IBrick> getBricks() {
        return bricks;
    }

    public void setBricks(List<IBrick> bricks) {
        this.bricks = bricks;
    }

    public List<Task> getTasks() {
        return tasks;
    }

    public void setTasks(List<Task> tasks) {
        this.tasks = tasks;
    }

    @Override
    public String getName() {
        return name;
    }

    @Override
    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
