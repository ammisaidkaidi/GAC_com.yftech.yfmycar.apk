package com.yftech.yfmycar.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.R;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class TipGearNotPBinding extends ViewDataBinding {

    @NonNull
    public final LinearLayout llTipGear;

    @NonNull
    public final TextView tvTip;

    /* JADX INFO: Access modifiers changed from: protected */
    public TipGearNotPBinding(DataBindingComponent dataBindingComponent, View view, int i, LinearLayout linearLayout, TextView textView) {
        super(dataBindingComponent, view, i);
        this.llTipGear = linearLayout;
        this.tvTip = textView;
    }

    @NonNull
    public static TipGearNotPBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static TipGearNotPBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable DataBindingComponent dataBindingComponent) {
        return (TipGearNotPBinding) DataBindingUtil.inflate(layoutInflater, R.layout.tip_gear_not_p, viewGroup, z, dataBindingComponent);
    }

    @NonNull
    public static TipGearNotPBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static TipGearNotPBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable DataBindingComponent dataBindingComponent) {
        return (TipGearNotPBinding) DataBindingUtil.inflate(layoutInflater, R.layout.tip_gear_not_p, null, false, dataBindingComponent);
    }

    public static TipGearNotPBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static TipGearNotPBinding bind(@NonNull View view, @Nullable DataBindingComponent dataBindingComponent) {
        return (TipGearNotPBinding) bind(dataBindingComponent, view, R.layout.tip_gear_not_p);
    }
}
