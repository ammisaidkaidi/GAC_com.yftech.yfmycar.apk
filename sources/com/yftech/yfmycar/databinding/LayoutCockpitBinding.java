package com.yftech.yfmycar.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class LayoutCockpitBinding extends ViewDataBinding {

    @NonNull
    public final RadioButton frontLeftSeat;

    @NonNull
    public final RadioButton frontRightSeat;

    @NonNull
    public final AppCompatImageView imageCar;

    @NonNull
    public final AppCompatImageView imageSeatSelectLeft;

    @NonNull
    public final AppCompatImageView imageSeatSelectLeftMirror;

    @NonNull
    public final AppCompatImageView imageSeatSelectRight;

    @NonNull
    public final AppCompatImageView imageSeatSelectRightMirror;

    @NonNull
    public final RadioButton leftRearviewMirror;

    @Bindable
    protected GlobalCarViewModel mGlobalCarViewModel;

    @NonNull
    public final RadioButton rightRearviewMirror;

    public abstract void setGlobalCarViewModel(@Nullable GlobalCarViewModel globalCarViewModel);

    /* JADX INFO: Access modifiers changed from: protected */
    public LayoutCockpitBinding(DataBindingComponent dataBindingComponent, View view, int i, RadioButton radioButton, RadioButton radioButton2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, RadioButton radioButton3, RadioButton radioButton4) {
        super(dataBindingComponent, view, i);
        this.frontLeftSeat = radioButton;
        this.frontRightSeat = radioButton2;
        this.imageCar = appCompatImageView;
        this.imageSeatSelectLeft = appCompatImageView2;
        this.imageSeatSelectLeftMirror = appCompatImageView3;
        this.imageSeatSelectRight = appCompatImageView4;
        this.imageSeatSelectRightMirror = appCompatImageView5;
        this.leftRearviewMirror = radioButton3;
        this.rightRearviewMirror = radioButton4;
    }

    @Nullable
    public GlobalCarViewModel getGlobalCarViewModel() {
        return this.mGlobalCarViewModel;
    }

    @NonNull
    public static LayoutCockpitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutCockpitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable DataBindingComponent dataBindingComponent) {
        return (LayoutCockpitBinding) DataBindingUtil.inflate(layoutInflater, R.layout.layout_cockpit, viewGroup, z, dataBindingComponent);
    }

    @NonNull
    public static LayoutCockpitBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutCockpitBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable DataBindingComponent dataBindingComponent) {
        return (LayoutCockpitBinding) DataBindingUtil.inflate(layoutInflater, R.layout.layout_cockpit, null, false, dataBindingComponent);
    }

    public static LayoutCockpitBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutCockpitBinding bind(@NonNull View view, @Nullable DataBindingComponent dataBindingComponent) {
        return (LayoutCockpitBinding) bind(dataBindingComponent, view, R.layout.layout_cockpit);
    }
}
