package com.yftech.yfmycar.view.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yftech.yfmycar.R;

/* loaded from: /home/user/work/dex/classes.dex */
public class WindowReversingTipView extends FrameLayout {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void lambda$initVdbData$1(View view) {
    }

    public WindowReversingTipView(@NonNull Context context) {
        super(context);
    }

    public WindowReversingTipView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        initVdbData();
    }

    public void initVdbData() {
        LayoutInflater.from(getContext()).inflate(R.layout.layout_window_reversing, (ViewGroup) this, true);
        findViewById(R.id.btn_confirm).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.widgets.-$$Lambda$WindowReversingTipView$yD7QWeR3nZJVDkhAkRO8KQ3AUrI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WindowReversingTipView.this.setVisibility(4);
            }
        });
        findViewById(R.id.frame).setOnClickListener(new View.OnClickListener() { // from class: com.yftech.yfmycar.view.widgets.-$$Lambda$WindowReversingTipView$LeENBAhBhc0R3U0lgExjHveMBTk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WindowReversingTipView.lambda$initVdbData$1(view);
            }
        });
    }
}
