package com.yftech.yfmycar.view.utils;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.databinding.DataBindingUtil;
import androidx.databinding.ViewDataBinding;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

/* loaded from: /home/user/work/dex/classes.dex */
public class VDBUtil {
    public static <VDB extends ViewDataBinding> VDB createViewDataBindingFromGenericSuperclass(Class<?> cls, LayoutInflater layoutInflater) {
        return (VDB) createViewDataBindingFromGenericSuperclass(cls, layoutInflater, null, false);
    }

    public static <VDB extends ViewDataBinding> VDB createViewDataBindingFromGenericSuperclass(Class<?> cls, LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        while (true) {
            String name = cls == null ? "" : cls.getName();
            if (name == null || cls == Object.class || name.startsWith("android") || name.startsWith("java")) {
                break;
            }
            Type genericSuperclass = cls.getGenericSuperclass();
            if (genericSuperclass instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) genericSuperclass;
                boolean z2 = false;
                for (Type type : parameterizedType.getActualTypeArguments()) {
                    if ((type instanceof Class) && ViewDataBinding.class.isAssignableFrom((Class) type)) {
                        z2 = true;
                    }
                }
                if (!z2) {
                    cls = cls.getSuperclass();
                } else {
                    return (VDB) createViewDataBinding((Class) parameterizedType.getActualTypeArguments()[0], layoutInflater, viewGroup, z);
                }
            } else {
                cls = cls.getSuperclass();
            }
        }
        throw new IllegalStateException("没有找到该类父类的ViewDataBinding泛型");
    }

    public static <VDB extends ViewDataBinding> VDB createViewDataBinding(Class<VDB> cls, LayoutInflater layoutInflater) {
        return (VDB) createViewDataBinding(cls, layoutInflater, null, false);
    }

    public static <VDB extends ViewDataBinding> VDB createViewDataBinding(Class<VDB> cls, LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        try {
            Context context = layoutInflater.getContext();
            String lowerCase = cls.getSimpleName().replaceAll("([A-Z])", "_$1").toLowerCase();
            String substring = lowerCase.substring(1, lowerCase.length() - "_binding".length());
            int identifier = context.getResources().getIdentifier(substring, "layout", context.getPackageName());
            if (identifier == 0) {
                identifier = context.getResources().getIdentifier(substring.replaceAll("([0-9])", "_$1"), "layout", context.getPackageName());
            }
            if (identifier != 0) {
                layoutInflater.inflate(identifier, (ViewGroup) null);
                return (VDB) DataBindingUtil.inflate(layoutInflater, identifier, viewGroup, z);
            }
            throw new NullPointerException();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public static void unbindAdapter(ViewDataBinding viewDataBinding) {
        if (viewDataBinding == null) {
            return;
        }
        try {
            for (Field field : viewDataBinding.getClass().getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(viewDataBinding);
                if (obj instanceof ViewDataBinding) {
                    unbindAdapter((ViewDataBinding) obj);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
