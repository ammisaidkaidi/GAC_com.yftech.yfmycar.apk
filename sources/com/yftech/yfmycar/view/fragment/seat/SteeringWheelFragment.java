package com.yftech.yfmycar.view.fragment.seat;

import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import com.yftech.yfmycar.R;
import com.yftech.yfmycar.view.base.BaseFragment;

/* loaded from: /home/user/work/dex/classes.dex */
public class SteeringWheelFragment extends BaseFragment implements View.OnClickListener {
    private AppCompatImageView mMoveDown;
    private AppCompatImageView mMoveLeft;
    private AppCompatImageView mMoveRight;
    private AppCompatImageView mMoveUp;

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public int setFragmentIndex() {
        return 0;
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public Object setLayout() {
        return Integer.valueOf(R.layout.fragment_steering_wheel);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment
    public void onBindView(@Nullable Bundle bundle, View view) {
        this.mMoveUp = (AppCompatImageView) view.findViewById(R.id.move_up);
        this.mMoveDown = (AppCompatImageView) view.findViewById(R.id.move_down);
        this.mMoveLeft = (AppCompatImageView) view.findViewById(R.id.move_left);
        this.mMoveRight = (AppCompatImageView) view.findViewById(R.id.move_right);
        this.mMoveUp.setOnClickListener(this);
        this.mMoveDown.setOnClickListener(this);
        this.mMoveLeft.setOnClickListener(this);
        this.mMoveRight.setOnClickListener(this);
    }

    @Override // com.yftech.yfmycar.view.base.BaseFragment, android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == 2131165325 || id == 2131165329 || id != 2131165331) {
        }
    }
}
