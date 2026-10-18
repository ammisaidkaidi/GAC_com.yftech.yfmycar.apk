.class Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;
.super Ljava/lang/Object;
.source "SeatVentilationHeatingView.java"

# interfaces
.implements Lcom/yftech/yfmycar/view/widgets/AngleLeftTouchRelativeLayout$OnSpecialTypeClickListener;


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

    .line 175
    iput-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpecialTypeClick(I)V
    .locals 4

    add-int/lit8 p1, p1, 0x1

    const-string v0, "SeatVentilationHeatingView"

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u70b9\u51fb\u98ce\u901f\u5ea6 level= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object v3, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v3}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$100(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->valueOfSeatName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yftech/yfmycar/view/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$400(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f070027

    if-eq v0, v1, :cond_3

    const v2, 0x7f070029

    if-eq v0, v2, :cond_2

    const v3, 0x7f07002b

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$500(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$202(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)I

    .line 185
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$400(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 186
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$200(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$600(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)V

    goto :goto_0

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$302(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)I

    .line 189
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$400(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 190
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$300(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$700(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$202(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)I

    .line 195
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$400(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 196
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$200(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$600(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)V

    goto :goto_0

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {v0, p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$302(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)I

    .line 200
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p1}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$400(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 201
    iget-object p1, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    iget-object p0, p0, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView$3;->this$0:Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;

    invoke-static {p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$300(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;)I

    move-result p0

    invoke-static {p1, p0}, Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;->access$700(Lcom/yftech/yfmycar/view/widgets/SeatVentilationHeatingView;I)V

    :goto_0
    return-void
.end method
