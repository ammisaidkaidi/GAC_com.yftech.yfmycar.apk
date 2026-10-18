package com.yftech.yfmycar.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.CompoundButtonBindingAdapter;
import androidx.lifecycle.LifecycleOwner;
import com.yftech.vehicle.internal.adapter.ICarInfo;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.generated.callback.OnClickListener;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.vm.NonNullLiveData;

/* loaded from: /home/user/work/dex/classes.dex */
public class ActivityMainBindingImpl extends ActivityMainBinding implements OnClickListener.Listener {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = new ViewDataBinding.IncludedLayouts(15);

    @Nullable
    private static final SparseIntArray sViewsWithIds;

    @Nullable
    private final View.OnClickListener mCallback10;

    @Nullable
    private final View.OnClickListener mCallback11;

    @Nullable
    private final View.OnClickListener mCallback5;

    @Nullable
    private final View.OnClickListener mCallback6;

    @Nullable
    private final View.OnClickListener mCallback7;

    @Nullable
    private final View.OnClickListener mCallback8;

    @Nullable
    private final View.OnClickListener mCallback9;
    private long mDirtyFlags;

    @NonNull
    private final FrameLayout mboundView0;

    @NonNull
    private final LinearLayout mboundView5;

    @NonNull
    private final RadioButton mboundView6;

    @NonNull
    private final RadioButton mboundView7;

    @NonNull
    private final RadioButton mboundView8;

    @NonNull
    private final FrameLayout mboundView9;

    static {
        sIncludes.setIncludes(9, new String[]{"layout_open_close_control", "layout_cockpit"}, new int[]{11, 12}, new int[]{R.layout.layout_open_close_control, R.layout.layout_cockpit});
        sViewsWithIds = new SparseIntArray();
        sViewsWithIds.put(R.id.fragment_container, 13);
        sViewsWithIds.put(R.id.tv_tip, 14);
    }

    public ActivityMainBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 15, sIncludes, sViewsWithIds));
    }

    private ActivityMainBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 4, (RadioButton) objArr[3], (FrameLayout) objArr[13], (LayoutCockpitBinding) objArr[12], (LayoutOpenCloseControlBinding) objArr[11], (RadioButton) objArr[4], (LinearLayout) objArr[10], (RadioButton) objArr[2], (LinearLayout) objArr[1], (TextView) objArr[14]);
        this.mDirtyFlags = -1L;
        this.cockpit.setTag(null);
        this.lightingEffect.setTag(null);
        this.llTip.setTag(null);
        this.mboundView0 = (FrameLayout) objArr[0];
        this.mboundView0.setTag(null);
        this.mboundView5 = (LinearLayout) objArr[5];
        this.mboundView5.setTag(null);
        this.mboundView6 = (RadioButton) objArr[6];
        this.mboundView6.setTag(null);
        this.mboundView7 = (RadioButton) objArr[7];
        this.mboundView7.setTag(null);
        this.mboundView8 = (RadioButton) objArr[8];
        this.mboundView8.setTag(null);
        this.mboundView9 = (FrameLayout) objArr[9];
        this.mboundView9.setTag(null);
        this.openCloseControl.setTag(null);
        this.radioGroup.setTag(null);
        setRootTag(view);
        this.mCallback9 = new OnClickListener(this, 5);
        this.mCallback8 = new OnClickListener(this, 4);
        this.mCallback7 = new OnClickListener(this, 3);
        this.mCallback11 = new OnClickListener(this, 7);
        this.mCallback6 = new OnClickListener(this, 2);
        this.mCallback5 = new OnClickListener(this, 1);
        this.mCallback10 = new OnClickListener(this, 6);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 32L;
        }
        this.layoutOpenCloseControl.invalidateAll();
        this.layoutCockpit.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return this.layoutOpenCloseControl.hasPendingBindings() || this.layoutCockpit.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        if (1 != i) {
            return false;
        }
        setGlobalCarViewModel((GlobalCarViewModel) obj);
        return true;
    }

    @Override // com.yftech.yfmycar.databinding.ActivityMainBinding
    public void setGlobalCarViewModel(@Nullable GlobalCarViewModel globalCarViewModel) {
        this.mGlobalCarViewModel = globalCarViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 16;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.layoutOpenCloseControl.setLifecycleOwner(lifecycleOwner);
        this.layoutCockpit.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        switch (i) {
            case 0:
                return onChangeGlobalCarViewModelTopIndex((NonNullLiveData) obj, i2);
            case 1:
                return onChangeGlobalCarViewModelPowerMode((NonNullLiveData) obj, i2);
            case 2:
                return onChangeLayoutCockpit((LayoutCockpitBinding) obj, i2);
            case 3:
                return onChangeLayoutOpenCloseControl((LayoutOpenCloseControlBinding) obj, i2);
            default:
                return false;
        }
    }

    private boolean onChangeGlobalCarViewModelTopIndex(NonNullLiveData<Integer> nonNullLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    private boolean onChangeGlobalCarViewModelPowerMode(NonNullLiveData<ICarInfo.PowerMode> nonNullLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        return true;
    }

    private boolean onChangeLayoutCockpit(LayoutCockpitBinding layoutCockpitBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 4;
        }
        return true;
    }

    private boolean onChangeLayoutOpenCloseControl(LayoutOpenCloseControlBinding layoutOpenCloseControlBinding, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 8;
        }
        return true;
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j;
        int i;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z4;
        int i8;
        int i9;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        GlobalCarViewModel globalCarViewModel = this.mGlobalCarViewModel;
        long j2 = j & 32;
        if (j2 != 0) {
            if (j2 != 0) {
                j = CarConfigControl.isOpenCloseControlConfigShow() ? j | 8192 : j | 4096;
            }
            if ((j & 32) != 0) {
                j = CarConfigControl.isCockpitConfigShow() ? j | 512 : j | 256;
            }
            if ((j & 32) != 0) {
                j = CarConfigControl.getAtmosphereLampConfig() ? j | 131072 : j | 65536;
            }
        }
        if ((51 & j) != 0) {
            long j3 = j & 48;
            if (j3 != 0) {
                boolean isArLanguage = globalCarViewModel != null ? globalCarViewModel.isArLanguage() : false;
                if (j3 != 0) {
                    j = isArLanguage ? j | 2048 | 2097152 : j | 1024 | 1048576;
                }
                i6 = isArLanguage ? 0 : 8;
                i7 = isArLanguage ? 8 : 0;
            } else {
                i6 = 0;
                i7 = 0;
            }
            long j4 = j & 49;
            if (j4 != 0) {
                NonNullLiveData<Integer> nonNullLiveData = globalCarViewModel != null ? globalCarViewModel.topIndex : null;
                updateLiveDataRegistration(0, nonNullLiveData);
                int safeUnbox = ViewDataBinding.safeUnbox(nonNullLiveData != null ? nonNullLiveData.getValue() : null);
                boolean z5 = safeUnbox == 2;
                boolean z6 = safeUnbox == 0;
                z2 = safeUnbox == 1;
                if (j4 != 0) {
                    j = z6 ? j | 32768 : j | 16384;
                }
                if ((j & 49) != 0) {
                    j = z2 ? j | 128 : j | 64;
                }
                int i10 = z6 ? 0 : 8;
                i9 = z2 ? 0 : 8;
                int i11 = i10;
                z4 = z5;
                z3 = z6;
                i8 = i11;
            } else {
                z2 = false;
                z3 = false;
                z4 = false;
                i8 = 0;
                i9 = 0;
            }
            long j5 = j & 50;
            if (j5 != 0) {
                NonNullLiveData<ICarInfo.PowerMode> nonNullLiveData2 = globalCarViewModel != null ? globalCarViewModel.powerMode : null;
                updateLiveDataRegistration(1, nonNullLiveData2);
                boolean z7 = (nonNullLiveData2 != null ? nonNullLiveData2.getValue() : null) == ICarInfo.PowerMode.ACC;
                if (j5 != 0) {
                    j = z7 ? j | 524288 : j | 262144;
                }
                i3 = z7 ? 0 : 8;
                i5 = i6;
                i4 = i7;
                z = z4;
                i2 = i8;
                i = i9;
            } else {
                i5 = i6;
                i4 = i7;
                z = z4;
                i2 = i8;
                i = i9;
                i3 = 0;
            }
        } else {
            i = 0;
            i2 = 0;
            z = false;
            z2 = false;
            z3 = false;
            i3 = 0;
            i4 = 0;
            i5 = 0;
        }
        if ((49 & j) != 0) {
            CompoundButtonBindingAdapter.setChecked(this.cockpit, z2);
            this.layoutCockpit.getRoot().setVisibility(i);
            this.layoutOpenCloseControl.getRoot().setVisibility(i2);
            CompoundButtonBindingAdapter.setChecked(this.lightingEffect, z);
            CompoundButtonBindingAdapter.setChecked(this.mboundView6, z);
            CompoundButtonBindingAdapter.setChecked(this.mboundView7, z2);
            CompoundButtonBindingAdapter.setChecked(this.mboundView8, z3);
            CompoundButtonBindingAdapter.setChecked(this.openCloseControl, z3);
        }
        if ((32 & j) != 0) {
            this.cockpit.setOnClickListener(this.mCallback6);
            this.cockpit.setVisibility(CarConfigControl.isCockpitConfigShow() ? 0 : 8);
            this.lightingEffect.setOnClickListener(this.mCallback7);
            this.lightingEffect.setVisibility(CarConfigControl.getAtmosphereLampConfig() ? 0 : 8);
            this.llTip.setOnClickListener(this.mCallback11);
            this.mboundView6.setOnClickListener(this.mCallback8);
            this.mboundView6.setVisibility(CarConfigControl.getAtmosphereLampConfig() ? 0 : 8);
            this.mboundView7.setOnClickListener(this.mCallback9);
            this.mboundView7.setVisibility(CarConfigControl.isCockpitConfigShow() ? 0 : 8);
            this.mboundView8.setOnClickListener(this.mCallback10);
            this.mboundView8.setVisibility(CarConfigControl.isOpenCloseControlConfigShow() ? 0 : 8);
            this.openCloseControl.setOnClickListener(this.mCallback5);
            this.openCloseControl.setVisibility(CarConfigControl.isOpenCloseControlConfigShow() ? 0 : 8);
        }
        if ((j & 50) != 0) {
            this.llTip.setVisibility(i3);
        }
        if ((j & 48) != 0) {
            this.mboundView5.setVisibility(i5);
            this.radioGroup.setVisibility(i4);
        }
        executeBindingsOn(this.layoutOpenCloseControl);
        executeBindingsOn(this.layoutCockpit);
    }

    @Override // com.yftech.yfmycar.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        switch (i) {
            case 1:
                GlobalCarViewModel globalCarViewModel = this.mGlobalCarViewModel;
                if (globalCarViewModel != null) {
                    globalCarViewModel.setTopIndex(0);
                    return;
                }
                return;
            case 2:
                GlobalCarViewModel globalCarViewModel2 = this.mGlobalCarViewModel;
                if (globalCarViewModel2 != null) {
                    globalCarViewModel2.setTopIndex(1);
                    return;
                }
                return;
            case 3:
                GlobalCarViewModel globalCarViewModel3 = this.mGlobalCarViewModel;
                if (globalCarViewModel3 != null) {
                    globalCarViewModel3.setTopIndex(2);
                    return;
                }
                return;
            case 4:
                GlobalCarViewModel globalCarViewModel4 = this.mGlobalCarViewModel;
                if (globalCarViewModel4 != null) {
                    globalCarViewModel4.setTopIndex(2);
                    return;
                }
                return;
            case 5:
                GlobalCarViewModel globalCarViewModel5 = this.mGlobalCarViewModel;
                if (globalCarViewModel5 != null) {
                    globalCarViewModel5.setTopIndex(1);
                    return;
                }
                return;
            case 6:
                GlobalCarViewModel globalCarViewModel6 = this.mGlobalCarViewModel;
                if (globalCarViewModel6 != null) {
                    globalCarViewModel6.setTopIndex(0);
                    return;
                }
                return;
            case 7:
            default:
                return;
        }
    }
}
