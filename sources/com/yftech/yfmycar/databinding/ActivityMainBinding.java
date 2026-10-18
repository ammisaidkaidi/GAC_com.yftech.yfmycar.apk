package com.yftech.yfmycar.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class ActivityMainBinding extends ViewDataBinding {

    @NonNull
    public final RadioButton cockpit;

    @NonNull
    public final FrameLayout fragmentContainer;

    @NonNull
    public final LayoutCockpitBinding layoutCockpit;

    @NonNull
    public final LayoutOpenCloseControlBinding layoutOpenCloseControl;

    @NonNull
    public final RadioButton lightingEffect;

    @NonNull
    public final LinearLayout llTip;

    @Bindable
    protected GlobalCarViewModel mGlobalCarViewModel;

    @NonNull
    public final RadioButton openCloseControl;

    @NonNull
    public final LinearLayout radioGroup;

    @NonNull
    public final TextView tvTip;

    public abstract void setGlobalCarViewModel(@Nullable GlobalCarViewModel globalCarViewModel);

    /* JADX INFO: Access modifiers changed from: protected */
    public ActivityMainBinding(DataBindingComponent dataBindingComponent, View view, int i, RadioButton radioButton, FrameLayout frameLayout, LayoutCockpitBinding layoutCockpitBinding, LayoutOpenCloseControlBinding layoutOpenCloseControlBinding, RadioButton radioButton2, LinearLayout linearLayout, RadioButton radioButton3, LinearLayout linearLayout2, TextView textView) {
        super(dataBindingComponent, view, i);
        this.cockpit = radioButton;
        this.fragmentContainer = frameLayout;
        this.layoutCockpit = layoutCockpitBinding;
        setContainedBinding(this.layoutCockpit);
        this.layoutOpenCloseControl = layoutOpenCloseControlBinding;
        setContainedBinding(this.layoutOpenCloseControl);
        this.lightingEffect = radioButton2;
        this.llTip = linearLayout;
        this.openCloseControl = radioButton3;
        this.radioGroup = linearLayout2;
        this.tvTip = textView;
    }

    @Nullable
    public GlobalCarViewModel getGlobalCarViewModel() {
        return this.mGlobalCarViewModel;
    }

    @NonNull
    public static ActivityMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ActivityMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable DataBindingComponent dataBindingComponent) {
        return (ActivityMainBinding) DataBindingUtil.inflate(layoutInflater, R.layout.activity_main, viewGroup, z, dataBindingComponent);
    }

    @NonNull
    public static ActivityMainBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static ActivityMainBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable DataBindingComponent dataBindingComponent) {
        return (ActivityMainBinding) DataBindingUtil.inflate(layoutInflater, R.layout.activity_main, null, false, dataBindingComponent);
    }

    public static ActivityMainBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static ActivityMainBinding bind(@NonNull View view, @Nullable DataBindingComponent dataBindingComponent) {
        return (ActivityMainBinding) bind(dataBindingComponent, view, R.layout.activity_main);
    }
}
