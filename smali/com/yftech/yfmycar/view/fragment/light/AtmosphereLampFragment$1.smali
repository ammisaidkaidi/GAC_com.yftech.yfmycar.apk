.class Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;
.super Ljava/lang/Object;
.source "AtmosphereLampFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->onBindView(Landroid/os/Bundle;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    .line 125
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/os/Handler;

    move-result-object p1

    const/4 p3, 0x6

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    add-int/lit8 p2, p2, 0x1

    const-string p1, "AtmosphereLampFragment"

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6c1b\u56f4\u706f\u4eae\u5ea6onProgressChanged\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/yftech/yfmycar/view/manager/LightManager;->setAtmosphereLampBrightness(I)Z

    .line 130
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0a0089

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-virtual {v0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0088

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sound_effects_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 147
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$1;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$200(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_1
    return-void
.end method
