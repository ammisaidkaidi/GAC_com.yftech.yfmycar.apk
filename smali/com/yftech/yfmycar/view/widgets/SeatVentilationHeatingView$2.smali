.class Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;
.super Ljava/lang/Object;
.source "SeatVentilationHeatingView.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;


# direct methods
.method constructor <init>(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    const-string p1, "SeatVentilationHeatingView"

    .line 165
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged:auto\u667a\u80fd"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$100(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string p2, "SeatVentilationHeatingView"

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged:close\u5173\u95ed\u901a\u98ce\u52a0\u70ed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$100(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    const/4 p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setCoolHotLevelUI(ZI)V

    goto :goto_0

    :pswitch_3
    const-string p1, "SeatVentilationHeatingView"

    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCheckedChanged:vent\u901a\u98ce"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$100(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    const/4 p2, 0x1

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$200(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setCoolHotLevelUI(ZI)V

    goto :goto_0

    :pswitch_4
    const-string p2, "SeatVentilationHeatingView"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged:heat\u52a0\u70ed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$100(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$2;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$300(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->setCoolHotLevelUI(ZI)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f070027
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
