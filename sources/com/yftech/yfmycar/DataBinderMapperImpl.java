package com.yftech.yfmycar;

import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.DataBinderMapper;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.databinding.ActivityMainBindingImpl;
import com.yftech.yfmycar.databinding.ActivityMainBindingLdrtlImpl;
import com.yftech.yfmycar.databinding.FragmentLeftRearviewMirrorBindingImpl;
import com.yftech.yfmycar.databinding.FragmentLeftRearviewMirrorBindingLdrtlImpl;
import com.yftech.yfmycar.databinding.FragmentRightRearviewMirrorBindingImpl;
import com.yftech.yfmycar.databinding.FragmentRightRearviewMirrorBindingLdrtlImpl;
import com.yftech.yfmycar.databinding.LayoutCockpitBindingImpl;
import com.yftech.yfmycar.databinding.LayoutCockpitBindingLdrtlImpl;
import com.yftech.yfmycar.databinding.LayoutOpenCloseControlBindingImpl;
import com.yftech.yfmycar.databinding.LayoutOpenCloseControlBindingLdrtlImpl;
import com.yftech.yfmycar.databinding.TipGearNotPBindingImpl;
import com.yftech.yfmycar.databinding.TipGearNotPBindingLdrtlImpl;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class DataBinderMapperImpl extends DataBinderMapper {
    private static final SparseIntArray INTERNAL_LAYOUT_ID_LOOKUP = new SparseIntArray(6);
    private static final int LAYOUT_ACTIVITYMAIN = 1;
    private static final int LAYOUT_FRAGMENTLEFTREARVIEWMIRROR = 2;
    private static final int LAYOUT_FRAGMENTRIGHTREARVIEWMIRROR = 3;
    private static final int LAYOUT_LAYOUTCOCKPIT = 4;
    private static final int LAYOUT_LAYOUTOPENCLOSECONTROL = 5;
    private static final int LAYOUT_TIPGEARNOTP = 6;

    static {
        INTERNAL_LAYOUT_ID_LOOKUP.put(R.layout.activity_main, 1);
        INTERNAL_LAYOUT_ID_LOOKUP.put(R.layout.fragment_left_rearview_mirror, 2);
        INTERNAL_LAYOUT_ID_LOOKUP.put(R.layout.fragment_right_rearview_mirror, 3);
        INTERNAL_LAYOUT_ID_LOOKUP.put(R.layout.layout_cockpit, 4);
        INTERNAL_LAYOUT_ID_LOOKUP.put(R.layout.layout_open_close_control, 5);
        INTERNAL_LAYOUT_ID_LOOKUP.put(R.layout.tip_gear_not_p, 6);
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View view, int i) {
        int i2 = INTERNAL_LAYOUT_ID_LOOKUP.get(i);
        if (i2 <= 0) {
            return null;
        }
        Object tag = view.getTag();
        if (tag == null) {
            throw new RuntimeException("view must have a tag");
        }
        switch (i2) {
            case 1:
                if ("layout/activity_main_0".equals(tag)) {
                    return new ActivityMainBindingImpl(dataBindingComponent, view);
                }
                if ("layout-ldrtl/activity_main_0".equals(tag)) {
                    return new ActivityMainBindingLdrtlImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for activity_main is invalid. Received: " + tag);
            case 2:
                if ("layout/fragment_left_rearview_mirror_0".equals(tag)) {
                    return new FragmentLeftRearviewMirrorBindingImpl(dataBindingComponent, view);
                }
                if ("layout-ldrtl/fragment_left_rearview_mirror_0".equals(tag)) {
                    return new FragmentLeftRearviewMirrorBindingLdrtlImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_left_rearview_mirror is invalid. Received: " + tag);
            case 3:
                if ("layout-ldrtl/fragment_right_rearview_mirror_0".equals(tag)) {
                    return new FragmentRightRearviewMirrorBindingLdrtlImpl(dataBindingComponent, view);
                }
                if ("layout/fragment_right_rearview_mirror_0".equals(tag)) {
                    return new FragmentRightRearviewMirrorBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for fragment_right_rearview_mirror is invalid. Received: " + tag);
            case 4:
                if ("layout-ldrtl/layout_cockpit_0".equals(tag)) {
                    return new LayoutCockpitBindingLdrtlImpl(dataBindingComponent, view);
                }
                if ("layout/layout_cockpit_0".equals(tag)) {
                    return new LayoutCockpitBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_cockpit is invalid. Received: " + tag);
            case 5:
                if ("layout-ldrtl/layout_open_close_control_0".equals(tag)) {
                    return new LayoutOpenCloseControlBindingLdrtlImpl(dataBindingComponent, view);
                }
                if ("layout/layout_open_close_control_0".equals(tag)) {
                    return new LayoutOpenCloseControlBindingImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for layout_open_close_control is invalid. Received: " + tag);
            case 6:
                if ("layout/tip_gear_not_p_0".equals(tag)) {
                    return new TipGearNotPBindingImpl(dataBindingComponent, view);
                }
                if ("layout-ldrtl/tip_gear_not_p_0".equals(tag)) {
                    return new TipGearNotPBindingLdrtlImpl(dataBindingComponent, view);
                }
                throw new IllegalArgumentException("The tag for tip_gear_not_p is invalid. Received: " + tag);
            default:
                return null;
        }
    }

    @Override // androidx.databinding.DataBinderMapper
    public ViewDataBinding getDataBinder(DataBindingComponent dataBindingComponent, View[] viewArr, int i) {
        if (viewArr == null || viewArr.length == 0 || INTERNAL_LAYOUT_ID_LOOKUP.get(i) <= 0 || viewArr[0].getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override // androidx.databinding.DataBinderMapper
    public int getLayoutId(String str) {
        Integer num;
        if (str == null || (num = InnerLayoutIdLookup.sKeys.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }

    @Override // androidx.databinding.DataBinderMapper
    public String convertBrIdToString(int i) {
        return InnerBrLookup.sKeys.get(i);
    }

    @Override // androidx.databinding.DataBinderMapper
    public List<DataBinderMapper> collectDependencies() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class InnerBrLookup {
        static final SparseArray<String> sKeys = new SparseArray<>(3);

        private InnerBrLookup() {
        }

        static {
            sKeys.put(0, "_all");
            sKeys.put(1, "globalCarViewModel");
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class InnerLayoutIdLookup {
        static final HashMap<String, Integer> sKeys = new HashMap<>(12);

        private InnerLayoutIdLookup() {
        }

        static {
            sKeys.put("layout/activity_main_0", Integer.valueOf(R.layout.activity_main));
            sKeys.put("layout-ldrtl/activity_main_0", Integer.valueOf(R.layout.activity_main));
            sKeys.put("layout/fragment_left_rearview_mirror_0", Integer.valueOf(R.layout.fragment_left_rearview_mirror));
            sKeys.put("layout-ldrtl/fragment_left_rearview_mirror_0", Integer.valueOf(R.layout.fragment_left_rearview_mirror));
            sKeys.put("layout-ldrtl/fragment_right_rearview_mirror_0", Integer.valueOf(R.layout.fragment_right_rearview_mirror));
            sKeys.put("layout/fragment_right_rearview_mirror_0", Integer.valueOf(R.layout.fragment_right_rearview_mirror));
            sKeys.put("layout-ldrtl/layout_cockpit_0", Integer.valueOf(R.layout.layout_cockpit));
            sKeys.put("layout/layout_cockpit_0", Integer.valueOf(R.layout.layout_cockpit));
            sKeys.put("layout-ldrtl/layout_open_close_control_0", Integer.valueOf(R.layout.layout_open_close_control));
            sKeys.put("layout/layout_open_close_control_0", Integer.valueOf(R.layout.layout_open_close_control));
            sKeys.put("layout/tip_gear_not_p_0", Integer.valueOf(R.layout.tip_gear_not_p));
            sKeys.put("layout-ldrtl/tip_gear_not_p_0", Integer.valueOf(R.layout.tip_gear_not_p));
        }
    }
}
