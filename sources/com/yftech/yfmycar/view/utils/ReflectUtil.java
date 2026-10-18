package com.yftech.yfmycar.view.utils;

import android.text.TextUtils;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.InvalidParameterException;

/* loaded from: /home/user/work/dex/classes.dex */
public class ReflectUtil {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    public static <T> T newInstance(Class<T> cls, Object... objArr) {
        if (objArr == null) {
            objArr = new Object[0];
        }
        Class<?>[] clsArr = new Class[objArr.length];
        for (int i = 0; i < clsArr.length; i++) {
            clsArr[i] = objArr[i].getClass();
        }
        try {
            return cls.getConstructor(clsArr).newInstance(objArr);
        } catch (IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            throw new InvalidParameterException(e.getLocalizedMessage());
        }
    }

    public static Object getFieldValue(Object obj, String str, boolean z) {
        Field declaredField;
        if (obj == null || TextUtils.isEmpty(str)) {
            return null;
        }
        if (z) {
            Object methodValue = getMethodValue(obj, "get" + str.substring(0, 1).toUpperCase() + str.substring(1));
            if (methodValue != null) {
                return methodValue;
            }
        }
        try {
            try {
                declaredField = obj.getClass().getField(str);
            } catch (Exception unused) {
                declaredField = obj.getClass().getDeclaredField(str);
            }
            declaredField.setAccessible(true);
            return declaredField.get(obj);
        } catch (IllegalAccessException | NoSuchFieldException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object getConstValue(Class<?> cls, String str) {
        Field declaredField;
        if (cls != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        declaredField = cls.getField(str);
                    } catch (Exception unused) {
                        declaredField = cls.getDeclaredField(str);
                    }
                    declaredField.setAccessible(true);
                    return declaredField.get(null);
                }
            } catch (IllegalAccessException | NoSuchFieldException e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }

    public static Object getMethodValue(Object obj, String str) {
        Method declaredMethod;
        if (obj == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            try {
                declaredMethod = obj.getClass().getMethod(str, new Class[0]);
            } catch (Exception unused) {
                declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
            }
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static Object getStaticMethodValue(Class<?> cls, String str) {
        Method declaredMethod;
        if (cls == null || TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            try {
                declaredMethod = cls.getMethod(str, new Class[0]);
            } catch (Exception unused) {
                declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
            }
            declaredMethod.setAccessible(true);
            return declaredMethod.invoke(null, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static void setFieldValue(Object obj, String str, Object obj2) {
        Field declaredField;
        if (obj == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            try {
                try {
                    setMethodValue(obj, "set" + str.substring(0, 1).toUpperCase() + str.substring(1), obj2);
                } catch (Exception unused) {
                    declaredField = obj.getClass().getField(str);
                    declaredField.setAccessible(true);
                    declaredField.set(obj, obj2);
                }
            } catch (Exception unused2) {
                declaredField = obj.getClass().getDeclaredField(str);
                declaredField.setAccessible(true);
                declaredField.set(obj, obj2);
            }
        } catch (IllegalAccessException | NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    public static void setMethodValue(Object obj, String str, Object obj2) throws InvocationTargetException, IllegalAccessException {
        Method findMethod = findMethod(obj.getClass().getMethods(), str, obj2);
        if (findMethod == null) {
            findMethod = findMethod(obj.getClass().getDeclaredMethods(), str, obj2);
            findMethod.setAccessible(true);
        }
        findMethod.invoke(obj, obj2);
    }

    private static Method findMethod(Method[] methodArr, String str, Object obj) {
        for (Method method : methodArr) {
            if (method.getName().equals(str)) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length == 1 && boxType(parameterTypes[0]).isAssignableFrom(obj.getClass())) {
                    return method;
                }
            }
        }
        return null;
    }

    private static Class<?> boxType(Class<?> cls) {
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        return cls == Long.TYPE ? Long.class : cls;
    }

    public static Object invokeStaticMethod(Class<?> cls, String str, Class<?>[] clsArr, Object[] objArr) {
        Method declaredMethod;
        if (cls != null) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        declaredMethod = cls.getMethod(str, clsArr);
                    } catch (Exception unused) {
                        declaredMethod = cls.getDeclaredMethod(str, new Class[0]);
                    }
                    declaredMethod.setAccessible(true);
                    return declaredMethod.invoke(null, objArr);
                }
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                e.printStackTrace();
                return null;
            }
        }
        return null;
    }
}
