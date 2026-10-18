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
public class ActivityMainBindingLdrtlImpl extends ActivityMainBinding implements OnClickListener.Listener {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = new ViewDataBinding.IncludedLayouts(11);

    @Nullable
    private static final SparseIntArray sViewsWithIds;

    @Nullable
    private final View.OnClickListener mCallback1;

    @Nullable
    private final View.OnClickListener mCallback2;

    @Nullable
    private final View.OnClickListener mCallback3;

    @Nullable
    private final View.OnClickListener mCallback4;
    private long mDirtyFlags;

    @NonNull
    private final FrameLayout mboundView0;

    @NonNull
    private final FrameLayout mboundView4;

    static {
        sIncludes.setIncludes(4, new String[]{"layout_open_close_control", "layout_cockpit"}, new int[]{6, 7}, new int[]{R.layout.layout_open_close_control, R.layout.layout_cockpit});
        sViewsWithIds = new SparseIntArray();
        sViewsWithIds.put(R.id.fragment_container, 8);
        sViewsWithIds.put(R.id.radio_group, 9);
        sViewsWithIds.put(R.id.tv_tip, 10);
    }

    public ActivityMainBindingLdrtlImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 11, sIncludes, sViewsWithIds));
    }

    private ActivityMainBindingLdrtlImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 4, (RadioButton) objArr[2], (FrameLayout) objArr[8], (LayoutCockpitBinding) objArr[7], (LayoutOpenCloseControlBinding) objArr[6], (RadioButton) objArr[3], (LinearLayout) objArr[5], (RadioButton) objArr[1], (LinearLayout) objArr[9], (TextView) objArr[10]);
        this.mDirtyFlags = -1L;
        this.cockpit.setTag(null);
        this.lightingEffect.setTag(null);
        this.llTip.setTag(null);
        this.mboundView0 = (FrameLayout) objArr[0];
        this.mboundView0.setTag(null);
        this.mboundView4 = (FrameLayout) objArr[4];
        this.mboundView4.setTag(null);
        this.openCloseControl.setTag(null);
        setRootTag(view);
        this.mCallback2 = new OnClickListener(this, 2);
        this.mCallback1 = new OnClickListener(this, 1);
        this.mCallback4 = new OnClickListener(this, 4);
        this.mCallback3 = new OnClickListener(this, 3);
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

    /* JADX WARN: Removed duplicated region for block: B:74:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0184  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void executeBindings() {
        long j;
        boolean z;
        boolean z2;
        boolean z3;
        int i;
        int i2;
        int i3;
        boolean z4;
        boolean z5;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        GlobalCarViewModel globalCarViewModel = this.mGlobalCarViewModel;
        long j2 = j & 32;
        if (j2 != 0) {
            if (j2 != 0) {
                j = CarConfigControl.isOpenCloseControlConfigShow() ? j | 2048 : j | 1024;
            }
            if ((j & 32) != 0) {
                j = CarConfigControl.isCockpitConfigShow() ? j | 512 : j | 256;
            }
            if ((j & 32) != 0) {
                j = CarConfigControl.getAtmosphereLampConfig() ? j | 32768 : j | 16384;
            }
        }
        if ((51 & j) != 0) {
            long j3 = j & 49;
            if (j3 != 0) {
                NonNullLiveData<Integer> nonNullLiveData = globalCarViewModel != null ? globalCarViewModel.topIndex : null;
                updateLiveDataRegistration(0, nonNullLiveData);
                int safeUnbox = ViewDataBinding.safeUnbox(nonNullLiveData != null ? nonNullLiveData.getValue() : null);
                boolean z6 = safeUnbox == 2;
                z4 = safeUnbox == 0;
                boolean z7 = safeUnbox == 1;
                if (j3 != 0) {
                    j = z4 ? j | 8192 : j | 4096;
                }
                if ((j & 49) != 0) {
                    j = z7 ? j | 128 : j | 64;
                }
                int i4 = z4 ? 0 : 8;
                int i5 = z7 ? 0 : 8;
                boolean z8 = z7;
                i2 = i4;
                z2 = z6;
                i = i5;
                z5 = z8;
            } else {
                z2 = false;
                i = 0;
                i2 = 0;
                z4 = false;
                z5 = false;
            }
            long j4 = j & 50;
            if (j4 != 0) {
                NonNullLiveData<ICarInfo.PowerMode> nonNullLiveData2 = globalCarViewModel != null ? globalCarViewModel.powerMode : null;
                updateLiveDataRegistration(1, nonNullLiveData2);
                boolean z9 = (nonNullLiveData2 != null ? nonNullLiveData2.getValue() : null) == ICarInfo.PowerMode.ACC;
                if (j4 != 0) {
                    j = z9 ? j | 131072 : j | 65536;
                }
                i3 = z9 ? 0 : 8;
                z3 = z4;
                z = z5;
                if ((49 & j) != 0) {
                    CompoundButtonBindingAdapter.setChecked(this.cockpit, z);
                    this.layoutCockpit.getRoot().setVisibility(i);
                    this.layoutOpenCloseControl.getRoot().setVisibility(i2);
                    CompoundButtonBindingAdapter.setChecked(this.lightingEffect, z2);
                    CompoundButtonBindingAdapter.setChecked(this.openCloseControl, z3);
                }
                if ((32 & j) != 0) {
                    this.cockpit.setOnClickListener(this.mCallback2);
                    this.cockpit.setVisibility(CarConfigControl.isCockpitConfigShow() ? 0 : 8);
                    this.lightingEffect.setOnClickListener(this.mCallback3);
                    this.lightingEffect.setVisibility(CarConfigControl.getAtmosphereLampConfig() ? 0 : 8);
                    this.llTip.setOnClickListener(this.mCallback4);
                    this.openCloseControl.setOnClickListener(this.mCallback1);
                    this.openCloseControl.setVisibility(CarConfigControl.isOpenCloseControlConfigShow() ? 0 : 8);
                }
                if ((j & 50) != 0) {
                    this.llTip.setVisibility(i3);
                }
                executeBindingsOn(this.layoutOpenCloseControl);
                executeBindingsOn(this.layoutCockpit);
            }
            z3 = z4;
            z = z5;
        } else {
            z = false;
            z2 = false;
            z3 = false;
            i = 0;
            i2 = 0;
        }
        i3 = 0;
        if ((49 & j) != 0) {
        }
        if ((32 & j) != 0) {
        }
        if ((j & 50) != 0) {
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
            default:
                return;
        }
    }
}
