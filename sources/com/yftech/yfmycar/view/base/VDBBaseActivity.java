package com.yftech.yfmycar.view.base;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.databinding.ViewDataBinding;
import com.yftech.yfmycar.view.utils.VDBUtil;

/* loaded from: /home/user/work/dex/classes.dex */
public class VDBBaseActivity<VDB extends ViewDataBinding> extends BaseActivity {
    protected VDB vdb;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.yfmycar.view.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.vdb = (VDB) VDBUtil.createViewDataBindingFromGenericSuperclass(getClass(), getLayoutInflater());
        this.vdb.setLifecycleOwner(this);
        setContentView(this.vdb.getRoot());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.yftech.yfmycar.view.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        if (this.vdb != null) {
            VDBUtil.unbindAdapter(this.vdb);
            this.vdb.unbind();
            this.vdb = null;
        }
        super.onDestroy();
    }
}
