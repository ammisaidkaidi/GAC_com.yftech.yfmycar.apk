package com.yftech.yfmycar.databinding;

import android.util.SparseIntArray;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.generated.callback.OnClickListener;

/* loaded from: /home/user/work/dex/classes.dex */
public class TipGearNotPBindingLdrtlImpl extends TipGearNotPBinding implements OnClickListener.Listener {

    @Nullable
    private static final ViewDataBinding.IncludedLayouts sIncludes = null;

    @Nullable
    private static final SparseIntArray sViewsWithIds = new SparseIntArray();

    @Nullable
    private final View.OnClickListener mCallback35;
    private long mDirtyFlags;

    @Override // com.yftech.yfmycar.generated.callback.OnClickListener.Listener
    public final void _internalCallbackOnClick(int i, View view) {
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int i, @Nullable Object obj) {
        return true;
    }

    static {
        sViewsWithIds.put(R.id.tv_tip, 1);
    }

    public TipGearNotPBindingLdrtlImpl(@Nullable DataBindingComponent dataBindingComponent, @NonNull View view) {
        this(dataBindingComponent, view, mapBindings(dataBindingComponent, view, 2, sIncludes, sViewsWithIds));
    }

    private TipGearNotPBindingLdrtlImpl(DataBindingComponent dataBindingComponent, View view, Object[] objArr) {
        super(dataBindingComponent, view, 0, (LinearLayout) objArr[0], (TextView) objArr[1]);
        this.mDirtyFlags = -1L;
        this.llTipGear.setTag(null);
        setRootTag(view);
        this.mCallback35 = new OnClickListener(this, 1);
        invalidateAll();
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.mDirtyFlags = 1L;
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
    protected void executeBindings() {
        long j;
        synchronized (this) {
            j = this.mDirtyFlags;
            this.mDirtyFlags = 0L;
        }
        if ((j & 1) != 0) {
            this.llTipGear.setOnClickListener(this.mCallback35);
        }
    }
}
