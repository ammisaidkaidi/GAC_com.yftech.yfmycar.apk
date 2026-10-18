package com.yftech.yfmycar.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.R;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class FragmentLeftRearviewMirrorBinding extends ViewDataBinding {

    @NonNull
    public final AppCompatTextView collapseAll;

    @NonNull
    public final AppCompatTextView expandAll;

    @NonNull
    public final AppCompatImageView leftMirror;

    @Nullable
    public final LinearLayoutCompat llBottomButtonsLeft;

    @NonNull
    public final AppCompatImageView moveDown;

    @NonNull
    public final AppCompatImageView moveLeft;

    @NonNull
    public final AppCompatImageView moveRight;

    @NonNull
    public final AppCompatImageView moveUp;

    /* JADX INFO: Access modifiers changed from: protected */
    public FragmentLeftRearviewMirrorBinding(DataBindingComponent dataBindingComponent, View view, int i, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5) {
        super(dataBindingComponent, view, i);
        this.collapseAll = appCompatTextView;
        this.expandAll = appCompatTextView2;
        this.leftMirror = appCompatImageView;
        this.llBottomButtonsLeft = linearLayoutCompat;
        this.moveDown = appCompatImageView2;
        this.moveLeft = appCompatImageView3;
        this.moveRight = appCompatImageView4;
        this.moveUp = appCompatImageView5;
    }

    @NonNull
    public static FragmentLeftRearviewMirrorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentLeftRearviewMirrorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable DataBindingComponent dataBindingComponent) {
        return (FragmentLeftRearviewMirrorBinding) DataBindingUtil.inflate(layoutInflater, R.layout.fragment_left_rearview_mirror, viewGroup, z, dataBindingComponent);
    }

    @NonNull
    public static FragmentLeftRearviewMirrorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static FragmentLeftRearviewMirrorBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable DataBindingComponent dataBindingComponent) {
        return (FragmentLeftRearviewMirrorBinding) DataBindingUtil.inflate(layoutInflater, R.layout.fragment_left_rearview_mirror, null, false, dataBindingComponent);
    }

    public static FragmentLeftRearviewMirrorBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static FragmentLeftRearviewMirrorBinding bind(@NonNull View view, @Nullable DataBindingComponent dataBindingComponent) {
        return (FragmentLeftRearviewMirrorBinding) bind(dataBindingComponent, view, R.layout.fragment_left_rearview_mirror);
    }
}
