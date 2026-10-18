package androidx.databinding;

/* loaded from: /home/user/work/dex/classes.dex */
public interface Observable {

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class OnPropertyChangedCallback {
        public abstract void onPropertyChanged(Observable observable, int i);
    }

    void addOnPropertyChangedCallback(OnPropertyChangedCallback onPropertyChangedCallback);

    void removeOnPropertyChangedCallback(OnPropertyChangedCallback onPropertyChangedCallback);
}
