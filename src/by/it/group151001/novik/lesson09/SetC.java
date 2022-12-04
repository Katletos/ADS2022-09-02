package by.it.group151001.novik.lesson09;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public class SetC<T> implements Set<T> {
    private final int DEFAULT_CAPACITY = 10;
    private Object[] arr = new Object[DEFAULT_CAPACITY];
    private int currSize = 0;
    public String toString(){
        StringBuilder str = new StringBuilder();
        str.append("[");
        for (int i = 0; i < currSize; i++) {
            str.append(arr[i]);
            str.append(", ");
        }
        if(str.length() > 1){
            str.delete(str.length() - 2, str.length());
        }

        str.append("]");

        return str.toString();
    }
    @Override
    public int size() {
        return currSize;
    }

    @Override
    public boolean isEmpty() {
        return currSize == 0;
    }

    @Override
    public boolean contains(Object o) {
        for(Object el: arr){
            if(el == o) return true;
        }
        return false;
    }

    @Override
    public Iterator<T> iterator() {
        return null;
    }

    @Override
    public Object[] toArray() {
        return new Object[0];
    }

    @Override
    public <T1> T1[] toArray(T1[] a) {
        return null;
    }

    @Override
    public boolean add(T t) {
        if (!contains(t)){
            if (currSize == arr.length - 1){
                Object[] newArr = new Object[arr.length * 2];
                System.arraycopy(arr,0,newArr,0,currSize);
                arr = newArr;
            }
            arr[currSize++] = t;
            return true;
        }
        return false;
    }

    @Override
    public boolean remove(Object o) {
        if (!contains(o)){
            return false;
        }
        int index = -1;
        for(int i = 0; i < currSize; i++){
            if (arr[i] == o){
                index = i;
            }
        }
        if (index == -1) return false;
        for(int i = index; i < currSize; i++){
            arr[i] = arr[i + 1];
        }
        arr[currSize] = null;
        currSize--;
        return true;
    }

    @Override
    public boolean containsAll(Collection<?> c) {
        boolean res = true;
        for(Object el : c){
            if (!contains(el)){
                res = false;
            }
        }
        return res;
    }

    @Override
    public boolean addAll(Collection<? extends T> c) {
        boolean res = false;
        for(T element: c){
            if(add(element)){
                res = true;
            }
        }
        return res;
    }

    @Override
    public boolean retainAll(Collection<?> c) {
        return false;
    }

    @Override
    public boolean removeAll(Collection<?> c) {
        boolean res = false;
        for( Object el: c){
            if (remove(el)){
                res = true;
            }
        }
        return res;
    }

    @Override
    public void clear() {
        currSize = 0;
        arr = new Object[currSize];
    }
}
