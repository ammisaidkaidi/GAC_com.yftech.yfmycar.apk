package com.yftech.yfmycar.view.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: /home/user/work/dex/classes.dex */
public class AirSeatEvent implements Parcelable {
    public static final Parcelable.Creator<AirSeatEvent> CREATOR = new Parcelable.Creator<AirSeatEvent>() { // from class: com.yftech.yfmycar.view.bean.AirSeatEvent.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AirSeatEvent createFromParcel(Parcel parcel) {
            return new AirSeatEvent(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AirSeatEvent[] newArray(int i) {
            return new AirSeatEvent[i];
        }
    };
    public boolean autoEnable;
    public int level;
    public int mSeatType;
    public int ventHeatAuto;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSeatType() {
        return this.mSeatType;
    }

    public void setSeatType(int i) {
        this.mSeatType = i;
    }

    public int getVentHeatAuto() {
        return this.ventHeatAuto;
    }

    public void setVentHeatAuto(int i) {
        this.ventHeatAuto = i;
    }

    public int getLevel() {
        return this.level;
    }

    public void setLevel(int i) {
        this.level = i;
    }

    public boolean isAutoEnable() {
        return this.autoEnable;
    }

    public void setAutoEnable(boolean z) {
        this.autoEnable = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mSeatType);
        parcel.writeInt(this.ventHeatAuto);
        parcel.writeInt(this.level);
        parcel.writeByte(this.autoEnable ? (byte) 1 : (byte) 0);
    }

    public void readFromParcel(Parcel parcel) {
        this.mSeatType = parcel.readInt();
        this.ventHeatAuto = parcel.readInt();
        this.level = parcel.readInt();
        this.autoEnable = parcel.readByte() != 0;
    }

    public AirSeatEvent() {
    }

    protected AirSeatEvent(Parcel parcel) {
        this.mSeatType = parcel.readInt();
        this.ventHeatAuto = parcel.readInt();
        this.level = parcel.readInt();
        this.autoEnable = parcel.readByte() != 0;
    }

    public String toString() {
        return "AirSeatEvent{mSeatType=" + this.mSeatType + ", ventHeatAuto=" + this.ventHeatAuto + ", level=" + this.level + ", autoEnable=" + this.autoEnable + '}';
    }
}
