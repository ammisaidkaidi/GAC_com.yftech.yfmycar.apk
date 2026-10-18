package com.yftech.yfmycar.databinding;

import android.graphics.drawable.Drawable;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.ContextCompat;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.CompoundButtonBindingAdapter;
import androidx.databinding.adapters.ViewBindingAdapter;
import com.yftech.yfmycar.generated.callback.OnClickListener;
import com.yftech.yfmycar.view.base.GlobalCarViewModel;
import com.yftech.yfmycar.view.manager.CarConfigControl;
import com.yftech.yfmycar.view.vm.NonNullLiveData;

/* loaded from: /home/user/work/dex/classes.dex */
public class LayoutOpenCloseControlBindingImpl extends LayoutOpenCloseControlBinding implements OnClickListener.Listener {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;

    @Nullable
    private static final SparseIntArray sViewsWithIds = null;

    @Nullable
    private final View.OnClickListener mCallback21;

    @Nullable
    private final View.OnClickListener mCallback22;

    @Nullable
    private final View.OnClickListener mCallback23;

    @Nullable
    private final View.OnClickListener mCallback24;

    @Nullable
    private final View.OnClickListener mCallback25;

    @Nullable
    private final View.OnClickListener mCallback26;

    @Nullable
    private final View.OnClickListener mCallback27;

    @Nullable
    private final View.OnClickListener mCallback28;
    private long mDirtyFlags;

    @NonNull
    private final RelativeLayout mboundView0;

    public LayoutOpenCloseControlBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 21, sIncludes, sViewsWithIds));
    }

    private LayoutOpenCloseControlBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 1, (AppCompatTextView) objArr[20], (RadioButton) objArr[2], (AppCompatImageView) objArr[4], (RadioButton) objArr[5], (AppCompatImageView) objArr[7], (View) objArr[1], (AppCompatImageView) objArr[3], (AppCompatImageView) objArr[6], (AppCompatImageView) objArr[9], (AppCompatImageView) objArr[12], (AppCompatImageView) objArr[17], (AppCompatTextView) objArr[19], (RadioButton) objArr[8], (AppCompatImageView) objArr[10], (RadioButton) objArr[11], (AppCompatImageView) objArr[13], (RadioButton) objArr[14], (AppCompatImageView) objArr[15], (RadioButton) objArr[16], (AppCompatImageView) objArr[18]);
        this.mDirtyFlags = -1L;
        this.closeWholeWindow.setTag(null);
        this.fontWindowLeft.setTag(null);
        this.fontWindowLeftPoint.setTag(null);
        this.fontWindowRight.setTag(null);
        this.fontWindowRightPoint.setTag(null);
        this.imgCarModel.setTag(null);
        this.imgFontWindowLeft.setTag(null);
        this.imgFontWindowRight.setTag(null);
        this.imgRearWindowLeft.setTag(null);
        this.imgRearWindowRight.setTag(null);
        this.imgTailgate.setTag(null);
        this.mboundView0 = (RelativeLayout) objArr[0];
        this.mboundView0.setTag(null);
        this.openSideWindow.setTag(null);
        this.rearWindowLeft.setTag(null);
        this.rearWindowLeftPoint.setTag(null);
        this.rearWindowRight.setTag(null);
        this.rearWindowRightPoint.setTag(null);
        this.skylight.setTag(null);
        this.skylightPoint.setTag(null);
        this.tailgate.setTag(null);
        this.tailgatePoint.setTag(null);
        setRootTag(view);
        this.mCallback27 = new OnClickListener(this, 7);
        this.mCallback28 = new OnClickListener(this, 8);
        this.mCallback25 = new OnClickListener(this, 5);
        this.mCallback26 = new OnClickListener(this, 6);
        this.mCallback23 = new OnClickListener(this, 3);
        this.mCallback24 = new OnClickListener(this, 4);
        this.mCallback21 = new OnClickListener(this, 1);
        this.mCallback22 = new OnClickListener(this, 2);
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

    @Override // com.yftech.yfmycar.databinding.LayoutOpenCloseControlBinding
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
        return onChangeGlobalCarViewModelOpenCloseControlIndex((NonNullLiveData) obj, i2);
    }

    private boolean onChangeGlobalCarViewModelOpenCloseControlIndex(NonNullLiveData<Integer> nonNullLiveData, int i) {
        if (i != 0) {
            return false;
        }
        synchronized (this) {
            this.mDirtyFlags |= 1;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:219:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x03ce  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x043c  */
    /* JADX WARN: Removed duplicated region for block: B:236:? A[RETURN, SYNTHETIC] */
    @Override // androidx.databinding.ViewDataBinding
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void executeBindings() {
        long j;
        Drawable drawable;
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        int i3;
        int i4;
        boolean z4;
        boolean z5;
        boolean z6;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z7;
        int i18;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        GlobalCarViewModel globalCarViewModel = this.mGlobalCarViewModel;
        long j2 = j & 4;
        if (j2 != 0) {
            if (j2 != 0) {
                j = CarConfigControl.isAllWindowCloseShow() ? j | 4194304 : j | 2097152;
            }
            if ((j & 4) != 0) {
                j = CarConfigControl.isAllWindowOpenShow() ? j | 262144 : j | 131072;
            }
        }
        long j3 = 7;
        long j4 = j & 7;
        Drawable drawable2 = null;
        if (j4 != 0) {
            if (j4 != 0) {
                j = CarConfigControl.getFragmentIndexConfig(0) ? j | 16777216 : j | 8388608;
            }
            if ((j & 7) != 0) {
                j = CarConfigControl.getFragmentIndexConfig(10) ? j | 4096 : j | 2048;
            }
            if ((j & 7) != 0) {
                j = CarConfigControl.getFragmentIndexConfig(5) ? j | 17179869184L : j | 8589934592L;
            }
            if ((j & 7) != 0) {
                j = CarConfigControl.getFragmentIndexConfig(4) ? j | 256 : j | 128;
            }
            if ((j & 7) != 0) {
                j = CarConfigControl.getFragmentIndexConfig(3) ? j | 16 : j | 8;
            }
            if ((j & 7) != 0) {
                j = CarConfigControl.isPlgmfunccfgPresent() ? j | 64 : j | 32;
            }
            if ((j & 7) != 0) {
                j = CarConfigControl.getFragmentIndexConfig(2) ? j | 16384 : j | 8192;
            }
            NonNullLiveData<Integer> nonNullLiveData = globalCarViewModel != null ? globalCarViewModel.openCloseControlIndex : null;
            updateLiveDataRegistration(0, nonNullLiveData);
            i = ViewDataBinding.safeUnbox(nonNullLiveData != null ? nonNullLiveData.getValue() : null);
            boolean z8 = i == 10;
            boolean z9 = i == 0;
            boolean z10 = i == 5;
            if (i == 4) {
                i18 = 2;
                z7 = true;
            } else {
                z7 = false;
                i18 = 2;
            }
            boolean z11 = i == i18;
            z3 = i == 3;
            if ((j & 7) != 0) {
                j = z10 ? j | 1024 : j | 512;
            }
            if ((j & 7) != 0) {
                j = z7 ? j | 4398046511104L : j | 2199023255552L;
            }
            if ((j & 7) != 0) {
                j = z11 ? j | 1099511627776L : j | 549755813888L;
            }
            if ((j & 7) != 0) {
                j = z3 ? j | 67108864 : j | 33554432;
            }
            int i19 = z10 ? 0 : 4;
            int i20 = z7 ? 0 : 4;
            int i21 = z11 ? 0 : 4;
            int i22 = z3 ? 0 : 4;
            if ((j & 6) != 0) {
                drawable2 = ContextCompat.getDrawable(getRoot().getContext(), globalCarViewModel != null ? globalCarViewModel.getCarModelImg() : 0);
            }
            z2 = z11;
            drawable = drawable2;
            z = z8;
            z4 = z9;
            z5 = z10;
            z6 = z7;
            i4 = i19;
            i3 = i20;
            i2 = i21;
            i5 = i22;
        } else {
            drawable = null;
            z = false;
            i = 0;
            z2 = false;
            z3 = false;
            i2 = 0;
            i3 = 0;
            i4 = 0;
            z4 = false;
            z5 = false;
            z6 = false;
            i5 = 0;
        }
        long j5 = j & 7;
        if (j5 != 0) {
            boolean z12 = CarConfigControl.isPlgmfunccfgPresent() ? z : false;
            if (j5 != 0) {
                j = z12 ? j | 4294967296L : j | 2147483648L;
            }
            i6 = z12 ? 0 : 4;
        } else {
            i6 = 0;
        }
        boolean z13 = ((j & 17179869184L) == 0 || i == 5) ? false : true;
        boolean z14 = ((j & 16) == 0 || i == 3) ? false : true;
        boolean z15 = ((16777216 & j) == 0 || i == 0) ? false : true;
        boolean z16 = ((4096 & j) == 0 || i == 10) ? false : true;
        boolean z17 = ((j & 256) == 0 || i == 4) ? false : true;
        boolean z18 = ((j & 16384) == 0 || i == 2) ? false : true;
        long j6 = j & 7;
        if (j6 != 0) {
            if (CarConfigControl.getFragmentIndexConfig(3)) {
                i13 = 4;
            } else {
                i13 = 4;
                z14 = false;
            }
            if (CarConfigControl.getFragmentIndexConfig(i13)) {
                i14 = 10;
            } else {
                i14 = 10;
                z17 = false;
            }
            if (CarConfigControl.getFragmentIndexConfig(i14)) {
                i15 = 2;
            } else {
                i15 = 2;
                z16 = false;
            }
            if (CarConfigControl.getFragmentIndexConfig(i15)) {
                i16 = 0;
            } else {
                i16 = 0;
                z18 = false;
            }
            if (CarConfigControl.getFragmentIndexConfig(i16)) {
                i17 = 5;
            } else {
                i17 = 5;
                z15 = false;
            }
            if (!CarConfigControl.getFragmentIndexConfig(i17)) {
                z13 = false;
            }
            if (j6 != 0) {
                j = z14 ? j | 65536 : j | 32768;
            }
            if ((j & 7) != 0) {
                j = z17 ? j | 268435456 : j | 134217728;
            }
            if ((j & 7) != 0) {
                j = z16 ? j | 68719476736L : j | 34359738368L;
            }
            if ((j & 7) != 0) {
                j = z18 ? j | 1073741824 : j | 536870912;
            }
            if ((j & 7) != 0) {
                j = z15 ? j | 1048576 : j | 524288;
            }
            if ((j & 7) != 0) {
                j = z13 ? j | 274877906944L : j | 137438953472L;
            }
            i7 = z14 ? 0 : 4;
            i8 = z17 ? 0 : 4;
            i9 = z16 ? 0 : 4;
            i10 = z18 ? 0 : 4;
            i11 = z15 ? 0 : 4;
            if (!z13) {
                i12 = 4;
                if ((4 & j) != 0) {
                    this.closeWholeWindow.setOnClickListener(this.mCallback28);
                    this.closeWholeWindow.setVisibility(CarConfigControl.isAllWindowCloseShow() ? 0 : 4);
                    this.fontWindowLeft.setOnClickListener(this.mCallback21);
                    this.fontWindowLeft.setVisibility(CarConfigControl.getFragmentConfigVisible(2));
                    this.fontWindowRight.setOnClickListener(this.mCallback22);
                    this.fontWindowRight.setVisibility(CarConfigControl.getFragmentConfigVisible(3));
                    this.openSideWindow.setOnClickListener(this.mCallback27);
                    this.openSideWindow.setVisibility(CarConfigControl.isAllWindowOpenShow() ? 0 : 4);
                    this.rearWindowLeft.setOnClickListener(this.mCallback23);
                    this.rearWindowLeft.setVisibility(CarConfigControl.getFragmentConfigVisible(4));
                    this.rearWindowRight.setOnClickListener(this.mCallback24);
                    this.rearWindowRight.setVisibility(CarConfigControl.getFragmentConfigVisible(5));
                    this.skylight.setOnClickListener(this.mCallback25);
                    this.skylight.setVisibility(CarConfigControl.getFragmentConfigVisible(0));
                    this.tailgate.setOnClickListener(this.mCallback26);
                    this.tailgate.setVisibility(CarConfigControl.getFragmentConfigVisible(10));
                    j3 = 7;
                }
                if ((j3 & j) != 0) {
                    CompoundButtonBindingAdapter.setChecked(this.fontWindowLeft, z2);
                    this.fontWindowLeftPoint.setVisibility(i10);
                    CompoundButtonBindingAdapter.setChecked(this.fontWindowRight, z3);
                    this.fontWindowRightPoint.setVisibility(i7);
                    this.imgFontWindowLeft.setVisibility(i2);
                    this.imgFontWindowRight.setVisibility(i5);
                    this.imgRearWindowLeft.setVisibility(i3);
                    this.imgRearWindowRight.setVisibility(i4);
                    this.imgTailgate.setVisibility(i6);
                    CompoundButtonBindingAdapter.setChecked(this.rearWindowLeft, z6);
                    this.rearWindowLeftPoint.setVisibility(i8);
                    CompoundButtonBindingAdapter.setChecked(this.rearWindowRight, z5);
                    this.rearWindowRightPoint.setVisibility(i12);
                    CompoundButtonBindingAdapter.setChecked(this.skylight, z4);
                    this.skylightPoint.setVisibility(i11);
                    CompoundButtonBindingAdapter.setChecked(this.tailgate, z);
                    this.tailgatePoint.setVisibility(i9);
                }
                if ((j & 6) == 0) {
                    ViewBindingAdapter.setBackground(this.imgCarModel, drawable);
                    return;
                }
                return;
            }
        } else {
            i7 = 0;
            i8 = 0;
            i9 = 0;
            i10 = 0;
            i11 = 0;
        }
        i12 = 0;
        if ((4 & j) != 0) {
        }
        if ((j3 & j) != 0) {
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
                    globalCarViewModel.setOpenCloseControlIndex(2);
                    return;
                }
                return;
            case 2:
                GlobalCarViewModel globalCarViewModel2 = this.mGlobalCarViewModel;
                if (globalCarViewModel2 != null) {
                    globalCarViewModel2.setOpenCloseControlIndex(3);
                    return;
                }
                return;
            case 3:
                GlobalCarViewModel globalCarViewModel3 = this.mGlobalCarViewModel;
                if (globalCarViewModel3 != null) {
                    globalCarViewModel3.setOpenCloseControlIndex(4);
                    return;
                }
                return;
            case 4:
                GlobalCarViewModel globalCarViewModel4 = this.mGlobalCarViewModel;
                if (globalCarViewModel4 != null) {
                    globalCarViewModel4.setOpenCloseControlIndex(5);
                    return;
                }
                return;
            case 5:
                GlobalCarViewModel globalCarViewModel5 = this.mGlobalCarViewModel;
                if (globalCarViewModel5 != null) {
                    globalCarViewModel5.setOpenCloseControlIndex(0);
                    return;
                }
                return;
            case 6:
                GlobalCarViewModel globalCarViewModel6 = this.mGlobalCarViewModel;
                if (globalCarViewModel6 != null) {
                    globalCarViewModel6.setOpenCloseControlIndex(10);
                    return;
                }
                return;
            case 7:
                GlobalCarViewModel globalCarViewModel7 = this.mGlobalCarViewModel;
                if (globalCarViewModel7 != null) {
                    globalCarViewModel7.controlCarWindowAll(true);
                    return;
                }
                return;
            case 8:
                GlobalCarViewModel globalCarViewModel8 = this.mGlobalCarViewModel;
                if (globalCarViewModel8 != null) {
                    globalCarViewModel8.controlCarWindowAll(false);
                    return;
                }
                return;
            default:
                return;
        }
    }
}
