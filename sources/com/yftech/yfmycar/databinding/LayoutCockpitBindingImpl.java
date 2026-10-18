package com.yftech.yfmycar.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.CompoundButtonBindingAdapter;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.generated.callback.OnClickListener;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.vm.NonNullLiveData;

/* loaded from: /home/user/work/dex/classes.dex */
public class LayoutCockpitBindingImpl extends LayoutCockpitBinding implements OnClickListener.Listener {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;

    @Nullable
    private static final SparseIntArray sViewsWithIds = null;

    @Nullable
    private final View.OnClickListener mCallback36;

    @Nullable
    private final View.OnClickListener mCallback37;

    @Nullable
    private final View.OnClickListener mCallback38;

    @Nullable
    private final View.OnClickListener mCallback39;

    @Nullable
    private final View.OnClickListener mCallback40;

    @Nullable
    private final View.OnClickListener mCallback41;
    private long mDirtyFlags;

    @NonNull
    private final RelativeLayout mboundView0;

    public LayoutCockpitBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 10, sIncludes, sViewsWithIds));
    }

    private LayoutCockpitBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (RadioButton) objArr[8], (RadioButton) objArr[9], (AppCompatImageView) objArr[1], (AppCompatImageView) objArr[4], (AppCompatImageView) objArr[2], (AppCompatImageView) objArr[5], (AppCompatImageView) objArr[3], (RadioButton) objArr[6], (RadioButton) objArr[7]);
        this.mDirtyFlags = -1L;
        this.frontLeftSeat.setTag(null);
        this.frontRightSeat.setTag(null);
        this.imageCar.setTag(null);
        this.imageSeatSelectLeft.setTag(null);
        this.imageSeatSelectLeftMirror.setTag(null);
        this.imageSeatSelectRight.setTag(null);
        this.imageSeatSelectRightMirror.setTag(null);
        this.leftRearviewMirror.setTag(null);
        this.mboundView0 = (RelativeLayout) objArr[0];
        this.mboundView0.setTag(null);
        this.rightRearviewMirror.setTag(null);
        setRootTag(view);
        this.mCallback39 = new OnClickListener(this, 4);
        this.mCallback37 = new OnClickListener(this, 2);
        this.mCallback40 = new OnClickListener(this, 5);
        this.mCallback38 = new OnClickListener(this, 3);
        this.mCallback41 = new OnClickListener(this, 6);
        this.mCallback36 = new OnClickListener(this, 1);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 4L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.mDirtyFlags != 0;
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

    @Override // com.yftech.yfmycar.databinding.LayoutCockpitBinding
    public void setGlobalCarViewModel(@Nullable GlobalCarViewModel globalCarViewModel) {
        this.mGlobalCarViewModel = globalCarViewModel;
        synchronized (this) {
            this.mDirtyFlags |= 2;
        }
        notifyPropertyChanged(1);
        super.requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        if (i != 0) {
            return false;
        }
        return onChangeGlobalCarViewModelCockpitIndex((NonNullLiveData) obj, i2);
    }

    private boolean onChangeGlobalCarViewModelCockpitIndex(NonNullLiveData<Integer> nonNullLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:109:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01a6  */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void executeBindings() {
        long j;
        boolean z;
        int i;
        int i2;
        int i3;
        boolean z2;
        int i4;
        boolean z3;
        Drawable drawable;
        long j2;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        GlobalCarViewModel globalCarViewModel = this.mGlobalCarViewModel;
        long j3 = j & 7;
        boolean z4 = false;
        if (j3 != 0) {
            NonNullLiveData<Integer> nonNullLiveData = globalCarViewModel != null ? globalCarViewModel.cockpitIndex : null;
            updateLiveDataRegistration(0, nonNullLiveData);
            int safeUnbox = ViewDataBinding.safeUnbox(nonNullLiveData != null ? nonNullLiveData.getValue() : null);
            boolean z5 = safeUnbox == 9;
            boolean z6 = safeUnbox == 8;
            boolean z7 = safeUnbox == 6;
            z3 = safeUnbox == 7;
            if (j3 != 0) {
                j = z5 ? j | 64 : j | 32;
            }
            if ((j & 7) != 0) {
                j = z6 ? j | 16384 : j | 8192;
            }
            if ((j & 7) != 0) {
                j = z7 ? j | 1024 : j | 512;
            }
            if ((j & 7) != 0) {
                j = z3 ? j | 4194304 : j | 2097152;
            }
            boolean isRearviewMirrorAdjustmentPresent = z5 ? CarConfigControl.isRearviewMirrorAdjustmentPresent() : false;
            boolean isRearviewMirrorAdjustmentPresent2 = z6 ? CarConfigControl.isRearviewMirrorAdjustmentPresent() : false;
            boolean isSeatVisible = z7 ? CarConfigControl.isSeatVisible(0) : false;
            boolean isSeatVisible2 = z3 ? CarConfigControl.isSeatVisible(1) : false;
            if ((j & 7) != 0) {
                j = isRearviewMirrorAdjustmentPresent ? j | 256 : j | 128;
            }
            if ((j & 7) != 0) {
                j = isRearviewMirrorAdjustmentPresent2 ? j | 65536 : j | 32768;
            }
            if ((j & 7) != 0) {
                j = isSeatVisible ? j | 1048576 : j | 524288;
            }
            if ((j & 7) != 0) {
                j = isSeatVisible2 ? j | 4096 : j | 2048;
            }
            int i5 = isRearviewMirrorAdjustmentPresent ? 0 : 4;
            int i6 = isRearviewMirrorAdjustmentPresent2 ? 0 : 4;
            int i7 = isSeatVisible ? 0 : 4;
            int i8 = isSeatVisible2 ? 0 : 4;
            if ((j & 6) != 0) {
                drawable = ContextCompat.getDrawable(getRoot().getContext(), globalCarViewModel != null ? globalCarViewModel.getCarCockpitlImg() : 0);
                i4 = i5;
                z2 = z5;
                z4 = z6;
                z = z7;
                i = i6;
                i3 = i7;
                i2 = i8;
                j2 = j & 4;
                if (j2 != 0 && j2 != 0) {
                    j = !CarConfigControl.isRightLeftSeatNameNeedReverse() ? j | 16 | 262144 : j | 8 | 131072;
                }
                if ((7 & j) != 0) {
                    CompoundButtonBindingAdapter.setChecked(this.frontLeftSeat, z);
                    CompoundButtonBindingAdapter.setChecked(this.frontRightSeat, z3);
                    this.imageSeatSelectLeft.setVisibility(i3);
                    this.imageSeatSelectLeftMirror.setVisibility(i);
                    this.imageSeatSelectRight.setVisibility(i2);
                    this.imageSeatSelectRightMirror.setVisibility(i4);
                    CompoundButtonBindingAdapter.setChecked(this.leftRearviewMirror, z4);
                    CompoundButtonBindingAdapter.setChecked(this.rightRearviewMirror, z2);
                }
                if ((j & 4) != 0) {
                    this.frontLeftSeat.setOnClickListener(this.mCallback40);
                    TextViewBindingAdapter.setText(this.frontLeftSeat, CarConfigControl.isRightLeftSeatNameNeedReverse() ? this.frontLeftSeat.getResources().getString(R.string.driver_seat) : this.frontLeftSeat.getResources().getString(R.string.front_right_seat));
                    this.frontLeftSeat.setVisibility(CarConfigControl.getFragmentConfigVisible(6));
                    this.frontRightSeat.setOnClickListener(this.mCallback41);
                    TextViewBindingAdapter.setText(this.frontRightSeat, CarConfigControl.isRightLeftSeatNameNeedReverse() ? this.frontRightSeat.getResources().getString(R.string.front_right_seat) : this.frontRightSeat.getResources().getString(R.string.driver_seat));
                    this.frontRightSeat.setVisibility(CarConfigControl.getFragmentConfigVisible(7));
                    this.imageSeatSelectLeft.setOnClickListener(this.mCallback36);
                    this.imageSeatSelectRight.setOnClickListener(this.mCallback37);
                    this.leftRearviewMirror.setOnClickListener(this.mCallback38);
                    this.leftRearviewMirror.setVisibility(CarConfigControl.getFragmentConfigVisible(8));
                    this.rightRearviewMirror.setOnClickListener(this.mCallback39);
                    this.rightRearviewMirror.setVisibility(CarConfigControl.getFragmentConfigVisible(8));
                }
                if ((j & 6) == 0) {
                    ViewBindingAdapter.setBackground(this.imageCar, drawable);
                    return;
                }
                return;
            }
            i4 = i5;
            z2 = z5;
            z4 = z6;
            z = z7;
            i = i6;
            i3 = i7;
            i2 = i8;
        } else {
            z = false;
            i = 0;
            i2 = 0;
            i3 = 0;
            z2 = false;
            i4 = 0;
            z3 = false;
        }
        drawable = null;
        j2 = j & 4;
        if (j2 != 0) {
            if (!CarConfigControl.isRightLeftSeatNameNeedReverse()) {
            }
        }
        if ((7 & j) != 0) {
        }
        if ((j & 4) != 0) {
        }
        if ((j & 6) == 0) {
        }
    }

    @Override // com.yftech.yfmycar.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
        switch (i) {
            case 1:
                GlobalCarViewModel globalCarViewModel = this.mGlobalCarViewModel;
                if (globalCarViewModel != null) {
                    globalCarViewModel.setCockpitIndex(6);
                    return;
                }
                return;
            case 2:
                GlobalCarViewModel globalCarViewModel2 = this.mGlobalCarViewModel;
                if (globalCarViewModel2 != null) {
                    globalCarViewModel2.setCockpitIndex(7);
                    return;
                }
                return;
            case 3:
                GlobalCarViewModel globalCarViewModel3 = this.mGlobalCarViewModel;
                if (globalCarViewModel3 != null) {
                    globalCarViewModel3.setCockpitIndex(8);
                    return;
                }
                return;
            case 4:
                GlobalCarViewModel globalCarViewModel4 = this.mGlobalCarViewModel;
                if (globalCarViewModel4 != null) {
                    globalCarViewModel4.setCockpitIndex(9);
                    return;
                }
                return;
            case 5:
                GlobalCarViewModel globalCarViewModel5 = this.mGlobalCarViewModel;
                if (globalCarViewModel5 != null) {
                    globalCarViewModel5.setCockpitIndex(6);
                    return;
                }
                return;
            case 6:
                GlobalCarViewModel globalCarViewModel6 = this.mGlobalCarViewModel;
                if (globalCarViewModel6 != null) {
                    globalCarViewModel6.setCockpitIndex(7);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
