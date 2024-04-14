.class Lcom/onesignal/DraggableRelativeLayout$1;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "DraggableRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/DraggableRelativeLayout;->createDragHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastYPos:I

.field final synthetic this$0:Lcom/onesignal/DraggableRelativeLayout;


# direct methods
.method constructor <init>(Lcom/onesignal/DraggableRelativeLayout;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->maxXPos:I

    return p1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 0

    .line 88
    iput p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->lastYPos:I

    .line 89
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->dragDirection:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_1

    .line 92
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    if-lt p2, p1, :cond_0

    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDragStart()V

    .line 95
    :cond_0
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    if-ge p2, p1, :cond_3

    .line 96
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    return p1

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->dragThresholdY:I

    if-gt p2, p1, :cond_2

    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 102
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDragStart()V

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    if-le p2, p1, :cond_3

    .line 105
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    return p1

    :cond_3
    return p2
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2

    .line 118
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    iget p1, p1, Lcom/onesignal/DraggableRelativeLayout$Params;->maxYPos:I

    .line 119
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$500(Lcom/onesignal/DraggableRelativeLayout;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 120
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p2

    iget p2, p2, Lcom/onesignal/DraggableRelativeLayout$Params;->dragDirection:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 121
    iget p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->lastYPos:I

    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$200(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v1

    if-gt p2, v1, :cond_0

    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p2

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$100(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result p2

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-lez p2, :cond_3

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$000(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result p1

    .line 123
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2, v0}, Lcom/onesignal/DraggableRelativeLayout;->access$502(Lcom/onesignal/DraggableRelativeLayout;Z)Z

    .line 125
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 126
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDismiss()V

    goto :goto_0

    .line 130
    :cond_1
    iget p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->lastYPos:I

    iget-object v1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    invoke-static {v1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$200(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result v1

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p2

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$100(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, p3, p2

    if-gez p2, :cond_3

    .line 131
    :cond_2
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p1

    invoke-static {p1}, Lcom/onesignal/DraggableRelativeLayout$Params;->access$000(Lcom/onesignal/DraggableRelativeLayout$Params;)I

    move-result p1

    .line 132
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2, v0}, Lcom/onesignal/DraggableRelativeLayout;->access$502(Lcom/onesignal/DraggableRelativeLayout;Z)Z

    .line 134
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 135
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$400(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$DraggableListener;

    move-result-object p2

    invoke-interface {p2}, Lcom/onesignal/DraggableRelativeLayout$DraggableListener;->onDismiss()V

    .line 140
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p2}, Lcom/onesignal/DraggableRelativeLayout;->access$600(Lcom/onesignal/DraggableRelativeLayout;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object p2

    iget-object p3, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p3}, Lcom/onesignal/DraggableRelativeLayout;->access$300(Lcom/onesignal/DraggableRelativeLayout;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object p3

    iget p3, p3, Lcom/onesignal/DraggableRelativeLayout$Params;->maxXPos:I

    invoke-virtual {p2, p3, p1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/onesignal/DraggableRelativeLayout$1;->this$0:Lcom/onesignal/DraggableRelativeLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
