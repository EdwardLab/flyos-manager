.class Lcom/onesignal/InAppMessageView$1;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/InAppMessageView;->updateHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/InAppMessageView;

.field final synthetic val$pageHeight:I


# direct methods
.method constructor <init>(Lcom/onesignal/InAppMessageView;I)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/onesignal/InAppMessageView$1;->this$0:Lcom/onesignal/InAppMessageView;

    iput p2, p0, Lcom/onesignal/InAppMessageView$1;->val$pageHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$1;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v0}, Lcom/onesignal/InAppMessageView;->access$000(Lcom/onesignal/InAppMessageView;)Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 126
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v1, "WebView height update skipped, new height will be used once it is displayed."

    invoke-static {v0, v1}, Lcom/onesignal/OneSignal;->onesignalLog(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$1;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v0}, Lcom/onesignal/InAppMessageView;->access$000(Lcom/onesignal/InAppMessageView;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 133
    iget v1, p0, Lcom/onesignal/InAppMessageView$1;->val$pageHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    iget-object v1, p0, Lcom/onesignal/InAppMessageView$1;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v1}, Lcom/onesignal/InAppMessageView;->access$000(Lcom/onesignal/InAppMessageView;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$1;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v0}, Lcom/onesignal/InAppMessageView;->access$100(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/DraggableRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$1;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v0}, Lcom/onesignal/InAppMessageView;->access$100(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/DraggableRelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/InAppMessageView$1;->this$0:Lcom/onesignal/InAppMessageView;

    iget v2, p0, Lcom/onesignal/InAppMessageView$1;->val$pageHeight:I

    invoke-static {v1}, Lcom/onesignal/InAppMessageView;->access$200(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/WebViewManager$Position;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/onesignal/InAppMessageView;->access$300(Lcom/onesignal/InAppMessageView;ILcom/onesignal/WebViewManager$Position;)Lcom/onesignal/DraggableRelativeLayout$Params;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onesignal/DraggableRelativeLayout;->setParams(Lcom/onesignal/DraggableRelativeLayout$Params;)V

    :cond_1
    return-void
.end method
