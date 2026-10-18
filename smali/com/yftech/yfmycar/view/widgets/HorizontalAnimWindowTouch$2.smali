.class Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;
.super Ljava/lang/Object;
.source "HorizontalAnimWindowTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->initUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastX:I

.field public moveValue:I

.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 131
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$300(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 134
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowRoofOpenOpertion()Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    move-result-object p1

    .line 135
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowRoofOpenOpertion;

    if-ne p1, v1, :cond_1

    goto/16 :goto_3

    .line 140
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 147
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$200(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 148
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->lastX:I

    sub-int/2addr p1, v0

    .line 149
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$200(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    .line 150
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    if-gez p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$500(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I

    move-result p1

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    .line 151
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$100(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;I)V

    .line 152
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->lastX:I

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "HorizontalAnimWindow"

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MotionEvent.ACTION_UP  moveValue = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$600(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I

    move-result p2

    rem-int/2addr p1, p2

    const-string p2, "HorizontalAnimWindow"

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent.ACTION_UP  value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$700(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 159
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    sub-int/2addr p2, p1

    goto :goto_1

    .line 161
    :cond_3
    iget p2, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->moveValue:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$600(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I

    move-result p1

    add-int/2addr p2, p1

    :goto_1
    const-string p1, "HorizontalAnimWindow"

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent.ACTION_UP  endValue = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$100(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;I)V

    mul-int/lit8 p1, p2, 0x64

    .line 166
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$500(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)I

    move-result v0

    div-int/2addr p1, v0

    .line 167
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlSkyLightPercent(I)Z

    .line 168
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$400(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v3, 0xbb8

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 169
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$800(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne p1, p2, :cond_4

    .line 170
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$200(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 142
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->lastX:I

    .line 143
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$200(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 144
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch$2;->this$0:Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;->access$400(Lcom/yftech/yfmycar/view/widgets/HorizontalAnimWindowTouch;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    :goto_2
    return v2

    :cond_5
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
