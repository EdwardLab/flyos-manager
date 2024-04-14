.class final Lcom/onesignal/WebViewManager$2;
.super Ljava/lang/Object;
.source "WebViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/WebViewManager;->showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$htmlStr:Ljava/lang/String;

.field final synthetic val$message:Lcom/onesignal/OSInAppMessage;


# direct methods
.method constructor <init>(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/onesignal/WebViewManager$2;->val$message:Lcom/onesignal/OSInAppMessage;

    iput-object p2, p0, Lcom/onesignal/WebViewManager$2;->val$htmlStr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/onesignal/WebViewManager$2;->val$message:Lcom/onesignal/OSInAppMessage;

    iget-object v1, p0, Lcom/onesignal/WebViewManager$2;->val$htmlStr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/onesignal/WebViewManager;->showHTMLString(Lcom/onesignal/OSInAppMessage;Ljava/lang/String;)V

    return-void
.end method
