.class final Lcom/onesignal/WebViewManager$1;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Lcom/onesignal/WebViewManager$OneSignalGenericCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/WebViewManager;->showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$currentActivity:Landroid/app/Activity;

.field final synthetic val$htmlStr:Ljava/lang/String;

.field final synthetic val$message:Lcom/onesignal/OSInAppMessage;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/onesignal/WebViewManager$1;->val$currentActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onesignal/WebViewManager$1;->val$message:Lcom/onesignal/OSInAppMessage;

    iput-object p3, p0, Lcom/onesignal/WebViewManager$1;->val$htmlStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/onesignal/WebViewManager;->lastInstance:Lcom/onesignal/WebViewManager;

    .line 99
    iget-object v0, p0, Lcom/onesignal/WebViewManager$1;->val$currentActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onesignal/WebViewManager$1;->val$message:Lcom/onesignal/OSInAppMessage;

    iget-object v2, p0, Lcom/onesignal/WebViewManager$1;->val$htmlStr:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/onesignal/WebViewManager;->access$000(Landroid/app/Activity;Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    return-void
.end method
