.class final Lcom/onesignal/WebViewManager$3;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/WebViewManager;->initInAppMessage(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$base64Str:Ljava/lang/String;

.field final synthetic val$currentActivity:Landroid/app/Activity;

.field final synthetic val$webViewManager:Lcom/onesignal/WebViewManager;


# direct methods
.method constructor <init>(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/onesignal/WebViewManager$3;->val$webViewManager:Lcom/onesignal/WebViewManager;

    iput-object p2, p0, Lcom/onesignal/WebViewManager$3;->val$currentActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/onesignal/WebViewManager$3;->val$base64Str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/onesignal/WebViewManager$3;->val$webViewManager:Lcom/onesignal/WebViewManager;

    iget-object v1, p0, Lcom/onesignal/WebViewManager$3;->val$currentActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/onesignal/WebViewManager$3;->val$base64Str:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/onesignal/WebViewManager;->access$100(Lcom/onesignal/WebViewManager;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
