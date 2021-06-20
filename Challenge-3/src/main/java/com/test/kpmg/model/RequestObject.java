package com.test.kpmg.model;


import java.util.Objects;

public class RequestObject {
    private  String inputObject;

    private  String key;

    public String getInputObject() {
        return inputObject;
    }

    public String getKey() {
        return key;
    }

    public void setInputObject(String inputObject) {
        this.inputObject = inputObject;
    }

    public void setKey(String key) {
        this.key = key;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        RequestObject that = (RequestObject) o;
        return inputObject.equals(that.inputObject) &&
                key.equals(that.key);
    }

    @Override
    public int hashCode() {
        return Objects.hash(inputObject, key);
    }
}
