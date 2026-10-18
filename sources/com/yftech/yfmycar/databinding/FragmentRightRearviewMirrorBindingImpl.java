package com.yftech.yfmycar.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.lifecycle.LifecycleOwner;
import com.yftech.yfmycar.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class FragmentRightRearviewMirrorBindingImpl extends FragmentRightRearviewMirrorBinding {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = new ViewDataBinding.IncludedLayouts(9);

    @Nullable
    private static final SparseIntArray sViewsWithIds;
    private long mDirtyFlags;

    @Nullable
    private final TipGearNotPBinding mboundView0;

    @NonNull
    private final RelativeLayout mboundView01;

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    static {
        sIncludes.setIncludes(0, new String[]{"tip_gear_not_p"}, new int[]{1}, new int[]{R.layout.tip_gear_not_p});
        sViewsWithIds = new SparseIntArray();
        sViewsWithIds.put(R.id.right_mirror, 2);
        sViewsWithIds.put(R.id.move_up, 3);
        sViewsWithIds.put(R.id.move_down, 4);
        sViewsWithIds.put(R.id.move_left, 5);
        sViewsWithIds.put(R.id.move_right, 6);
        sViewsWithIds.put(R.id.collapse_all, 7);
        sViewsWithIds.put(R.id.expand_all, 8);
    }

    public FragmentRightRearviewMirrorBindingImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 9, sIncludes, sViewsWithIds));
    }

    private FragmentRightRearviewMirrorBindingImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (AppCompatTextView) objArr[7], (AppCompatTextView) objArr[8], null, (AppCompatImageView) objArr[4], (AppCompatImageView) objArr[5], (AppCompatImageView) objArr[6], (AppCompatImageView) objArr[3], (AppCompatImageView) objArr[2]);
        this.mDirtyFlags = -1L;
        this.mboundView0 = (TipGearNotPBinding) objArr[1];
        setContainedBinding(this.mboundView0);
        this.mboundView01 = (RelativeLayout) objArr[0];
        this.mboundView01.setTag(null);
        setRootTag(view);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1L;
        }
        this.mboundView0.invalidateAll();
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            if (this.mDirtyFlags != 0) {
                return true;
            }
            return this.mboundView0.hasPendingBindings();
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void setLifecycleOwner(@Nullable LifecycleOwner lifecycleOwner) {
        super.setLifecycleOwner(lifecycleOwner);
        this.mboundView0.setLifecycleOwner(lifecycleOwner);
    }

    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        synchronized (this) {
            long j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        executeBindingsOn(this.mboundView0);
    }
}
