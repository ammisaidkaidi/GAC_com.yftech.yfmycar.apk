package androidx.databinding;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;

@Target({ElementType.ANNOTATION_TYPE})
/* loaded from: /home/user/work/dex/classes.dex */
public @interface BindingMethod {
    String attribute();

    String method();

    Class type();
}
