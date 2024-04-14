.class Lcom/onesignal/InAppMessageView$3;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Lcom/onesignal/DraggableRelativeLayout$DraggableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/InAppMessageView;->setUpDraggableLayout(Landroid/content/Context;Landroid/widget/LinearLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/InAppMessageView;


# direct methods
.method constructor <init>(Lcom/onesignal/InAppMessageView;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/InAppMessageView;->access$1200(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onesignal/InAppMessageView;->access$1302(Lcom/onesignal/InAppMessageView;Z)Z

    return-void
.end method

.method public onDragStart()V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/onesignal/InAppMessageView;->access$1302(Lcom/onesignal/InAppMessageView;Z)Z

    return-void
.end method
