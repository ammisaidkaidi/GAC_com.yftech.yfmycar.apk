.class Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;
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

    .line 152
    iput-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    add-int/lit8 p1, p2, 0x1

    .line 157
    iget-object v0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$300(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yftech/yfmycar/view/widgets/ColorfulBitmap;->makeTintBitmap(I)V

    if-eqz p3, :cond_0

    .line 158
    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$400(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_0

    .line 159
    iget-object p2, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/os/Handler;

    move-result-object p2

    const/4 p3, 0x6

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeMessages(I)V

    const-string p2, "AtmosphereLampFragment"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6c1b\u56f4\u706f\u989c\u8272onProgressChanged\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/yftech/yfmycar/view/manager/LightManager;->setAtmosphereLampColor(I)Z

    .line 162
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$100(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 173
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$000(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$400(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroidx/appcompat/widget/AppCompatCheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 174
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-virtual {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->showShortToast(Ljava/lang/String;)V

    goto :goto_1

    .line 176
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/LightManager;->getInstance()Lcom/yftech/yfmycar/view/manager/LightManager;

    move-result-object p1

    sget-object v0, Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;->COLOR_CHOOSE_MODE:Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;

    invoke-virtual {p1, v0}, Lcom/yftech/yfmycar/view/manager/LightManager;->setAtmosphereLampMode(Lcom/yftech/vehicle/internal/adapter/ICarLight$AtmosphereLampWorkMode;)Z

    .line 177
    iget-object p1, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "sound_effects_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 179
    iget-object p0, p0, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment$2;->this$0:Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;->access$200(Lcom/yftech/yfmycar/view/fragment/light/AtmosphereLampFragment;)Landroid/media/AudioManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_2
    :goto_1
    return-void
.end method
