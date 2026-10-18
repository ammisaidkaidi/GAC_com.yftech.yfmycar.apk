package com.yftech.yfmycar.view.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RelativeLayout;
import androidx.annotation.IdRes;

/* loaded from: /home/user/work/dex/classes.dex */
public class RelativeRadioGroup extends RelativeLayout implements CompoundButton.OnCheckedChangeListener {
    private int checkId;
    private CompoundButton.OnCheckedChangeListener mChildOnCheckedChangeListener;

    public RelativeRadioGroup(Context context) {
        super(context);
        this.checkId = -1;
    }

    public RelativeRadioGroup(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.checkId = -1;
    }

    public RelativeRadioGroup(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.checkId = -1;
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        for (int i5 = 0; i5 < getChildCount(); i5++) {
            View childAt = getChildAt(i5);
            if (childAt instanceof RadioButton) {
                ((RadioButton) childAt).setOnCheckedChangeListener(this);
            }
        }
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        setCheck(compoundButton.getId(), z);
    }

    public void check(@IdRes int i) {
        if (i == -1 || this.checkId == i) {
            return;
        }
        setCheck(i, true);
    }

    public void clearCheck() {
        setCheck(-1, false);
    }

    public int getCheckedRadioButtonId() {
        return this.checkId;
    }

    private void setCheck(@IdRes int i, boolean z) {
        if (i == -1 || this.checkId != i) {
            if (i != -1) {
                CompoundButton compoundButton = (CompoundButton) findViewById(i);
                if (i != this.checkId && z) {
                    this.checkId = i;
                    if (this.mChildOnCheckedChangeListener != null) {
                        this.mChildOnCheckedChangeListener.onCheckedChanged(compoundButton, true);
                    }
                    for (int i2 = 0; i2 < getChildCount(); i2++) {
                        View childAt = getChildAt(i2);
                        boolean z2 = childAt instanceof RadioButton;
                        if (z2 && childAt.getId() != i) {
                            ((RadioButton) childAt).setChecked(false);
                        } else if (z2 && childAt.getId() == i) {
                            ((RadioButton) childAt).setChecked(true);
                        }
                    }
                }
                if (i != this.checkId || z) {
                    return;
                }
                this.checkId = i;
                if (this.mChildOnCheckedChangeListener != null) {
                    this.mChildOnCheckedChangeListener.onCheckedChanged(compoundButton, false);
                    return;
                }
                return;
            }
            if (this.checkId != -1) {
                this.checkId = -1;
                CompoundButton compoundButton2 = (CompoundButton) findViewById(this.checkId);
                if (compoundButton2 instanceof RadioButton) {
                    compoundButton2.setChecked(false);
                }
            }
        }
    }

    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.mChildOnCheckedChangeListener = onCheckedChangeListener;
    }
}
