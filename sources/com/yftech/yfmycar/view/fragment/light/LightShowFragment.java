package com.yftech.yfmycar.view.fragment.light;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;

/* loaded from: /home/user/work/dex/classes.dex */
public class LightShowFragment extends BaseFragment {
    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public void onBindView(@Nullable Bundle bundle, View view) {
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 1;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_light_show);
    }
}
