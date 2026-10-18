.class Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;
.super Ljava/lang/Object;
.source "VerticalAnimWindowTouchView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->initUI(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastY:I

.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 138
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$300(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 141
    :cond_0
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$400(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getWindowOperationState(I)Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    move-result-object p1

    .line 142
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->CLOSING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-eq p1, v1, :cond_5

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;->OPENING:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOperationState;

    if-ne p1, v1, :cond_1

    goto/16 :goto_4

    .line 147
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    .line 154
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 155
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->lastY:I

    sub-int/2addr p1, v0

    .line 156
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    .line 157
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget v0, v0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    if-gez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$600(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result v0

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget v1, v1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    .line 158
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$200(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget v0, v0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget v1, v1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    neg-int v1, v1

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 159
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$200(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->lastY:I

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "VerticalAnimWindowTouchView"

    .line 163
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MotionEvent.ACTION_UP  moveValue = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget v0, v0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget p1, p1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$600(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 165
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$600(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result p1

    goto :goto_1

    .line 167
    :cond_3
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget p1, p1, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$700(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result p2

    rem-int/2addr p1, p2

    const-string p2, "VerticalAnimWindowTouchView"

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent.ACTION_UP  value = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    int-to-double v3, p1

    .line 169
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$800(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)D

    move-result-wide v5

    cmpg-double p2, v3, v5

    if-gez p2, :cond_4

    .line 170
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget p2, p2, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    sub-int p1, p2, p1

    goto :goto_1

    .line 172
    :cond_4
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    iget p2, p2, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->moveValue:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$700(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result p1

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$600(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 175
    :goto_1
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$200(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    neg-int v0, p1

    invoke-virtual {p2, v2, p1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 176
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$200(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "VerticalAnimWindowTouchView"

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotionEvent.ACTION_UP  endValue = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p2}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$700(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result p2

    div-int/2addr p1, p2

    .line 184
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->__UNKNOWN__:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 202
    :pswitch_2
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    goto :goto_2

    .line 199
    :pswitch_3
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->EIGHTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    goto :goto_2

    .line 196
    :pswitch_4
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->SIXTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    goto :goto_2

    .line 193
    :pswitch_5
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FORTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    goto :goto_2

    .line 190
    :pswitch_6
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->TWENTY_PERCENT_OPEN:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    goto :goto_2

    .line 187
    :pswitch_7
    sget-object p2, Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;->FULLY_CLOSE:Lcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;

    .line 206
    :goto_2
    invoke-static {}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->getInstance()Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$400(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/yftech/yfmycar/view/manager/MyCarWindowManager;->controlCarWindow(ILcom/yftech/vehicle/internal/adapter/ICarWindow$WindowOpenPercent;)Z

    .line 207
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$500(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0xbb8

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    .line 149
    :pswitch_8
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$500(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->lastY:I

    .line 151
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;->access$000(Lcom/yftech/yfmycar/view/widgets/VerticalAnimWindowTouchView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_3
    return v2

    :cond_5
    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
