package com.yftech.yfmycar.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RadioButton;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.Bindable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class LayoutOpenCloseControlBinding extends ViewDataBinding {

    @NonNull
    public final AppCompatTextView closeWholeWindow;

    @NonNull
    public final RadioButton fontWindowLeft;

    @NonNull
    public final AppCompatImageView fontWindowLeftPoint;

    @NonNull
    public final RadioButton fontWindowRight;

    @NonNull
    public final AppCompatImageView fontWindowRightPoint;

    @NonNull
    public final View imgCarModel;

    @NonNull
    public final AppCompatImageView imgFontWindowLeft;

    @NonNull
    public final AppCompatImageView imgFontWindowRight;

    @NonNull
    public final AppCompatImageView imgRearWindowLeft;

    @NonNull
    public final AppCompatImageView imgRearWindowRight;

    @NonNull
    public final AppCompatImageView imgTailgate;

    @Bindable
    protected GlobalCarViewModel mGlobalCarViewModel;

    @NonNull
    public final AppCompatTextView openSideWindow;

    @NonNull
    public final RadioButton rearWindowLeft;

    @NonNull
    public final AppCompatImageView rearWindowLeftPoint;

    @NonNull
    public final RadioButton rearWindowRight;

    @NonNull
    public final AppCompatImageView rearWindowRightPoint;

    @NonNull
    public final RadioButton skylight;

    @NonNull
    public final AppCompatImageView skylightPoint;

    @NonNull
    public final RadioButton tailgate;

    @NonNull
    public final AppCompatImageView tailgatePoint;

    public abstract void setGlobalCarViewModel(@Nullable GlobalCarViewModel globalCarViewModel);

    /* JADX INFO: Access modifiers changed from: protected */
    public LayoutOpenCloseControlBinding(DataBindingComponent dataBindingComponent, View view, int i, AppCompatTextView appCompatTextView, RadioButton radioButton, AppCompatImageView appCompatImageView, RadioButton radioButton2, AppCompatImageView appCompatImageView2, View view2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, AppCompatImageView appCompatImageView6, AppCompatImageView appCompatImageView7, AppCompatTextView appCompatTextView2, RadioButton radioButton3, AppCompatImageView appCompatImageView8, RadioButton radioButton4, AppCompatImageView appCompatImageView9, RadioButton radioButton5, AppCompatImageView appCompatImageView10, RadioButton radioButton6, AppCompatImageView appCompatImageView11) {
        super(dataBindingComponent, view, i);
        this.closeWholeWindow = appCompatTextView;
        this.fontWindowLeft = radioButton;
        this.fontWindowLeftPoint = appCompatImageView;
        this.fontWindowRight = radioButton2;
        this.fontWindowRightPoint = appCompatImageView2;
        this.imgCarModel = view2;
        this.imgFontWindowLeft = appCompatImageView3;
        this.imgFontWindowRight = appCompatImageView4;
        this.imgRearWindowLeft = appCompatImageView5;
        this.imgRearWindowRight = appCompatImageView6;
        this.imgTailgate = appCompatImageView7;
        this.openSideWindow = appCompatTextView2;
        this.rearWindowLeft = radioButton3;
        this.rearWindowLeftPoint = appCompatImageView8;
        this.rearWindowRight = radioButton4;
        this.rearWindowRightPoint = appCompatImageView9;
        this.skylight = radioButton5;
        this.skylightPoint = appCompatImageView10;
        this.tailgate = radioButton6;
        this.tailgatePoint = appCompatImageView11;
    }

    @Nullable
    public GlobalCarViewModel getGlobalCarViewModel() {
        return this.mGlobalCarViewModel;
    }

    @NonNull
    public static LayoutOpenCloseControlBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        return inflate(layoutInflater, viewGroup, z, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutOpenCloseControlBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z, @Nullable DataBindingComponent dataBindingComponent) {
        return (LayoutOpenCloseControlBinding) DataBindingUtil.inflate(layoutInflater, R.layout.layout_open_close_control, viewGroup, z, dataBindingComponent);
    }

    @NonNull
    public static LayoutOpenCloseControlBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, DataBindingUtil.getDefaultComponent());
    }

    @NonNull
    public static LayoutOpenCloseControlBinding inflate(@NonNull LayoutInflater layoutInflater, @Nullable DataBindingComponent dataBindingComponent) {
        return (LayoutOpenCloseControlBinding) DataBindingUtil.inflate(layoutInflater, R.layout.layout_open_close_control, null, false, dataBindingComponent);
    }

    public static LayoutOpenCloseControlBinding bind(@NonNull View view) {
        return bind(view, DataBindingUtil.getDefaultComponent());
    }

    public static LayoutOpenCloseControlBinding bind(@NonNull View view, @Nullable DataBindingComponent dataBindingComponent) {
        return (LayoutOpenCloseControlBinding) bind(dataBindingComponent, view, R.layout.layout_open_close_control);
    }
}
