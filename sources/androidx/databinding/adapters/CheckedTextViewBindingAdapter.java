package androidx.databinding.adapters;

import android.widget.CheckedTextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;

@BindingMethods({@BindingMethod(attribute = "android:checkMark", method = "setCheckMarkDrawable", type = CheckedTextView.class), @BindingMethod(attribute = "android:checkMarkTint", method = "setCheckMarkTintList", type = CheckedTextView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: /home/user/work/dex/classes.dex */
public class CheckedTextViewBindingAdapter {
}
